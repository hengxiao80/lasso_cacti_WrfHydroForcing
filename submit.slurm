#!/usr/bin/bash

#SBATCH -A cli120
#SBATCH -J test
#SBATCH -N 1 
#SBATCH -t 0:10:00
#SBATCH -o test.out
#SBATCH -e test.err

cd /ccs/home/h1x/proj/WrfHydroForcing
source /sw/andes/python/3.7/anaconda-base/bin/activate wrfhydro
date
srun -n 12 -N 1 --cpu-bind=cores python ./genForcing.py test.config 1.0 test
date