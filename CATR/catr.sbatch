#!/bin/bash
#SBATCH --mem=40000MB
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8
#SBATCH --time=100:00:00
#SBATCH --job-name="catr"
#SBATCH --mail-type=end
#SBATCH --mail-type=fail

module purge
module load anaconda3/5.3.1
module load cuda/10.1.105
module load gcc/6.3.0

# Replace with your NetID
NETID=sab1086

cd /scratch/${NETID}/ImageCaptioningCATR/CATR
source activate env

pip install -r requirements.txt

python3 -u main.py