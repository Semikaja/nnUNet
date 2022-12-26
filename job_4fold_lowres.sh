#!/bin/sh
#SBATCH --partition=GPUQ
#SBATCH --account=ie-ies
#SBATCH --time=45:00:00 
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --gres=gpu:1
#SBATCH --constraint=V100
#SBATCH --job-name="test_training"
#SBATCH --output=3dlowres-fold4-training-run.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
nnUNet_train 3d_lowres nnUNetTrainerV2 001 4
