#!/bin/sh
#SBATCH --partition=GPUQ
#SBATCH --account=ie-ies
#SBATCH --time=45:00:00 
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --gres=gpu:1
#SBATCH --constraint=V100
#SBATCH --job-name="fold0_training"
#SBATCH --output=inference-run.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
nnUNet_predict -i test_set_001 -o test_output -t 001 -m 3d_lowres 
