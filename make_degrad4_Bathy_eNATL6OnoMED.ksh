cp /mnt/meom/MODEL_SET/eNATL60/eNATL60-I/eNATL60_BATHY_GEBCO_2014_2D_msk_v3_merg.nc bathy_eNATL60_4D.nc
ncap2 -O -s 'defdim("t",1);defdim("z",1)' bathy_eNATL60_4D.nc bathy_eNATL60_4D.nc
#ncap2 -O -s 'Bathy_new[t,z,y,z]=Bathymetry' bathy_eNATL60_4D.nc bathy_eNATL60_4D.nc
ncecat -v Bathymetry -u time bathy_eNATL60_4D.nc out.nc
ncecat -v Bathymetry -u z bathy_eNATL60_4D.nc zout.nc
ncecat -O -v Bathymetry -u t zout.nc out.nc
ncrename -d t,time_counter out.nc
ncks -A -v nav_lev /mnt/meom/MODEL_SET/eNATL60/eNATL60-I/mask_eNATL60_3.6_lev1.nc out.nc
ncrename -v nav_lev,z out.nc

sbatch job_degrad_bathy.ksh

ncks -O -F -d x,1,1480 degraded_Bathymetry.nc eNATL60noMED_bathy_degrad4.nc

