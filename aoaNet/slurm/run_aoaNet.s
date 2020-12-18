#!/bin/bash
#
#SBATCH --job-name=show_tell
#SBATCH --nodes=1
#SBATCH --gres=gpu:p40:1
#SBATCH --cpus-per-task=8
#SBATCH --time=15:00:00
#SBATCH --mem=15000MB
#SBATCH --mail-type=end
#SBATCH --mail-type=fail

source ~/.bashrc # source your bashrc to get access to conda.
cd /scratch/am10245/cv/image_captioning_aoanet/  # cd into the folder of your project
conda activate aoaNet  # activate your conda env with all your libraries ! Important.
bash  train_show_tell.sh # run your python file that hosts your training/computational code
