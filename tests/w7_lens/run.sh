#!/bin/bash
#SBATCH --job-name=w7
#SBATCH --partition=savio
#SBATCH --account=co_astro
#SBATCH --qos=astro_savio_normal
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=20
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --requeue

cd $SLURM_SUBMIT_DIR
module load intel
module load openmpi/1.6.5-intel
module load gcc/4.8.5
module load gsl
module load hdf5
mpirun /global/scratch/dagoldst/sedona6/src/EXEC/gomc
