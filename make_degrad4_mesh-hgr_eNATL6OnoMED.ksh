sbatch job_degrad_e1te2t.ksh
ncks -O -F -d x,1,1480 eNATL60_e1t_degrad4.nc eNATL60noMED_e1t_degrad4.nc
ncks -O -F -d x,1,1480 eNATL60_e2t_degrad4.nc eNATL60noMED_e2t_degrad4.nc
