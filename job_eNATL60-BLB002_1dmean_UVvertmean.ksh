#!/bin/bash
#SBATCH -J 1dmean
#SBATCH -n 1          
#SBATCH -o 1dmean_%J.out
#SBATCH -e 1dmean_%J.err
#SBATCH --time=11:31:00
#SBATCH --mem=14000
#SBATCH --account=fortran

cd /mnt/meom/MODEL_SET/eNATL60/eNATL60-BLB002-S/1d/eNATL60

ulimit -s unlimited

for file in $(ls /mnt/meom/MODEL_SET/eNATL60/eNATL60-BLB002-S/1h/eNATL60/*vertmean*); do
	fileo=$(basename $file | sed "s/1h/1d/g")
	if [ ! -f $fileo ]; then
		echo $fileo
		fileob=$(echo $fileo | sed "s/.nc//g")
		cdfmoy -l $file -o $fileob
	fi
done
