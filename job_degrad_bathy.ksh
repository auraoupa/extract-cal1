#!/bin/bash
#SBATCH -J degrad_bathy
#SBATCH -n 1          
#SBATCH -o degrad_bathy_%J.out
#SBATCH -e degrad_bathy_%J.err
#SBATCH --time=00:31:00
#SBATCH --mem=14000
#SBATCH --account=fortran

cd /mnt/meom/workdir/alberta/eNATL60/eNATL60-I

ulimit -s unlimited

cdfdegrad -f out.nc -v Bathymetry -r 4 4 -p T
