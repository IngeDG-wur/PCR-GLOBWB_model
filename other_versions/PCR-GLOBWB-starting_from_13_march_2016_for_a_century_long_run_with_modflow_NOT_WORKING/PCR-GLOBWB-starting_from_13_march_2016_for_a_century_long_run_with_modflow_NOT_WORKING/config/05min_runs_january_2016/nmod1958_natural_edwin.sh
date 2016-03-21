#!/bin/bash
#SBATCH -N 1
#SBATCH -t 119:59:00 
#SBATCH -p fat                                                                                                                                                                              

cd /home/edwin/github/edwinkost/PCR-GLOBWB/model
python parallelPCR-GLOBWB_without_prefactors.py ../config/05min_runs_january_2016/setup_05min_pcrglobwb_only_cartesius_parallel_natural.ini no_debug

# pcrglobwb only (natural, accutraveltime, without modflow) - start
