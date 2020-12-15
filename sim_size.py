import os
import subprocess

check_dir = "/misc/scratch/jma1/scarab/spec06_checkpoints_ref/"
benchmarks = ["bzip2", "hmmer", "mcf", "sphinx3"]
raw_cmd = "python3 bin/scarab_launch.py --params src/PARAMS.kaby_lake --simdir {} --checkpoint {} --scarab_args='--inst_limit 30000000 {}'"

raw_sim_dir = "sim_dir/size/{}"
if not os.path.exists("sim_dir"):
    os.mkdir("sim_dir")

if not os.path.exists("sim_dir/size"):
    os.mkdir("sim_dir/size")
# raw_stat_file = "/misc/scratch/jchen/scarab/"


for ben in benchmarks:
    f_stat = open("size_stat", "a")

    f_stat.write("{}:\n".format(ben))

    dir = check_dir + ben + "_06/" + "ref/"
    files = os.listdir(dir)
    print("files under dir {}: {}".format(dir, files))

    for size in [0.25, 1, 4, 16]:
        f_stat.write("cache size: {}:\n".format(str(size * 1024 * 1024)))

        for file in files:
            if "ref0" in file:
                f_stat.write("checkpoint: {}".format(file))

                sim_dir = raw_sim_dir.format(ben + "/" + str(size) + "/" + file)

                if not os.path.exists("sim_dir/size/" + ben):
                    os.mkdir("sim_dir/size/" + ben)

                if not os.path.exists("sim_dir/size/" + ben + "/"+ str(size)):
                    os.mkdir("sim_dir/size/" + ben + "/"+ str(size))

                if not os.path.exists(sim_dir):
                    os.mkdir(sim_dir)

                print("sim_dir: {}".format(sim_dir))

                print("deal with checkpoint {}".format(dir + file))
                cmd = raw_cmd.format(sim_dir, dir + file, "--l1_size " + str(int(size * 1024 * 1024)) )
                print("cmd: {}".format(cmd))

                res = subprocess.call(cmd, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                # os.system(cmd)

                stat_file = sim_dir + "/core.stat.0.out"

                f = open(stat_file, "r")
                line = f.readline()
                while "IPC" not in line:
                    line = f.readline()

                idx = line.find("IPC")
                IPC_data = line[idx : -1]

                f.close()

                print("write: {}".format("{} {}\n".format(file, IPC_data)))
                f_stat.write("{} {}\n".format("IPC", IPC_data))

                stat_file = sim_dir + "/memory.stat.0.out"
                f = open(stat_file, "r")
                line = f.readline()
                while "L1_MISS" not in line:
                    line = f.readline()

                ed = line.find("%")
                st = line.rfind(" ", 0, ed)
                Miss_data = line[st: ed]

                f.close()

                print("write: {}".format("{} {}\n".format(file, Miss_data)))
                f_stat.write("{} {}\n".format("Miss", Miss_data))

                print("finished!")

    f_stat.write("\n")
    f_stat.close()

