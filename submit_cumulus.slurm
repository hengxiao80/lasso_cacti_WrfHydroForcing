#!/bin/bash

#SBATCH -A cli120
#SBATCH -J test
#SBATCH -N 1
#SBATCH -t 1:00:00
#SBATCH -o test.out
#SBATCH -e test.err

cd /gpfs/wolf/cli120/proj-shared/h1x/wrfhydro_cacti/mfe_code

which python
conda env list
conda list

date
srun -n 36 -N 1 --cpu-bind=cores python ./genForcing.py test_d03.config 1.0 test
date
