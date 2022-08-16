#!/bin/bash
#SBATCH -J degrad_e1te2t
#SBATCH -n 1          
#SBATCH -o degrad_e1te2t_%J.out
#SBATCH -e degrad_e1te2t_%J.err
#SBATCH --time=00:31:00
#SBATCH --mem=14000
#SBATCH --account=fortran



ulimit -s unlimited

cd /mnt/meom/workdir/alberta/eNATL60/eNATL60-I

/mnt/meom/workdir/alberta/DEV/git/CDFTOOLS/bin/cdfdegrad_grid -f /mnt/meom/MODEL_SET/eNATL60/eNATL60-I/mesh_hgr_eNATL60_3.6.nc -v e1t -r 4 4 -p T -o eNATL60_e1t_degrad4.nc
/mnt/meom/workdir/alberta/DEV/git/CDFTOOLS/bin/cdfdegrad_grid -f /mnt/meom/MODEL_SET/eNATL60/eNATL60-I/mesh_hgr_eNATL60_3.6.nc -v e2t -r 4 4 -p T -o eNATL60_e2t_degrad4.nc
