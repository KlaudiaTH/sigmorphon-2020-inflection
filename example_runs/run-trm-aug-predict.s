#!/bin/bash
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --time=06:30:00
#SBATCH --mem=32GB
#SBATCH --job-name=as12152
#SBATCH --mail-user=as12152@nyu.edu
#SBATCH --output=slurm_%j.out


. ~/.bashrc
module load anaconda3/4.7.12

conda activate ssl-framework

lang=$1
model_copy=$2
seed=6757
bash task0-trm-aug-predict.sh $lang $seed $model_copy