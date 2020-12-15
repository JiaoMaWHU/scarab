#!/bin/bash
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/b1 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/bzip2_06/ref/bzip2_06_ref0_checkpoint1_0.20591_196680044501 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/b2 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/bzip2_06/ref/bzip2_06_ref0_checkpoint2_0.2482_105420025348 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/b3 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/bzip2_06/ref/bzip2_06_ref0_checkpoint3_0.54588_101400024281 --scarab_args='--inst_limit 30000000 --l1_size 4194304'

python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/h1 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/hmmer_06/ref/hmmer_06_ref0_checkpoint1_0.5258666721432679_543840279176 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/h2 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/hmmer_06/ref/hmmer_06_ref0_checkpoint2_0.4741333278567321_459000236938 --scarab_args='--inst_limit 30000000 --l1_size 4194304'

python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/m1 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/mcf_06/ref/mcf_06_ref0_checkpoint1_0.23218_166890025972 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/m2 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/mcf_06/ref/mcf_06_ref0_checkpoint2_0.29955_193440030541 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/m3 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/mcf_06/ref/mcf_06_ref0_checkpoint3_0.46827_136200022904 --scarab_args='--inst_limit 30000000 --l1_size 4194304'

python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/sp1 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/sphinx3_06/ref/sphinx3_06_ref0_checkpoint1_0.20356_607050154129 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/sp2 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/sphinx3_06/ref/sphinx3_06_ref0_checkpoint2_0.46031_2819400766852 --scarab_args='--inst_limit 30000000 --l1_size 4194304'
python3 bin/scarab_launch.py --params PARAMS.kaby_lake_srrip --simdir test_srrip_c4/sp3 --checkpoint /misc/scratch/jma1/scarab/spec06_checkpoints_ref/sphinx3_06/ref/sphinx3_06_ref0_checkpoint3_0.33613_1073910276692 --scarab_args='--inst_limit 30000000 --l1_size 4194304'