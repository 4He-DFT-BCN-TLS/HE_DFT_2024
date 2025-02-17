#!/bin/bash


#SBATCH -N 1                    # use 1 node
##SBATCH -n 1                    # run 1 MPI task per node
#SBATCH -c 12
##SBATCH --mem=30000
#SBATCH --ntasks-per-core=1     # use 20 cpus per OpenMP task
#SBATCH --threads-per-core=1    # use 2 OpenMP thread per physical cpu corec (so 40 OpenMP threads in total)
#SBATCH --time=300:00:00        # use 300 hours of wall-time
#SBATCH --mail-user=ernestogarciaalfonso96@gmail.com
#SBATCH --mail-type=BEGIN,END
#SBATCH --partition skylake,cslake





#SBATCH -J "4He500"


#export OMP_PROC_BIND=true
#export WORKDIR=$(pwd)


#cd ${WORKDIR}
#date
#echo "Execution starting"
#time srun -N 1 -n 1 -c 5 $(placement 1 5) ./4hedft < pure-4he1000.input > pure-4he1000.res 2> pure-4he1000.err
time ./4hedft < pure-4he500.input > pure-4he500.res 2> pure-4he500.err
#date
#echo "Execution finished"

#jobinfo ${SLURM_JOBID}
