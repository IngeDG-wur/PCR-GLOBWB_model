#!/bin/bash

set -x

# set a working folder on a scratch disk (it will contains slurm output)
# - for tests on cartesius
WORK_FOLDER="/scratch-shared/edwin/pcrglobwb_pcraster4.3_test_on_eejit"
mkdir -p ${WORK_FOLDER}

# copy the master job file to the working folder
cp run_05min_test_on_eejit_natural_test_on_cartesius.sh ${WORK_FOLDER}

# go to the working folder
cd ${WORK_FOLDER}

# submit the jobs
sbatch --export=NUMBER_OF_WORKING_THREADS=-1 -J pcrt_-1 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=0  -J pcrt_0  run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=1  -J pcrt_1  run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=2  -J pcrt_2  run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=4  -J pcrt_4  run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=8  -J pcrt_8  run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=16 -J pcrt_16 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=24 -J pcrt_24 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=32 -J pcrt_32 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=48 -J pcrt_48 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=64 -J pcrt_64 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=80 -J pcrt_80 run_05min_test_on_eejit_natural_test_on_cartesius.sh
sbatch --export=NUMBER_OF_WORKING_THREADS=96 -J pcrt_96 run_05min_test_on_eejit_natural_test_on_cartesius.sh

# go to the previous folder
cd -

set +x
