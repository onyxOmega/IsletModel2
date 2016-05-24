#!/bin/bash

#Setting the name of the job
#PBS -N IsletSimObjectiveTest
#Setting a walltime for the job
#PBS -l walltime=1:30:00
#Selecting processors
#PBS -l nodes=1:ppn=12
#SBATCH --reservation=janus-serial
 
cd $PBS_O_WORKDIR

#Execute

rm runtimeOutput.txt
./simulate.exe input/UserDefinedVars.txt >> runtimeOutput.txt
