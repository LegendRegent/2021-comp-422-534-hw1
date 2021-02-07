#SBATCH --export=ALL
#SBATCH --nodes=1 
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1 
#SBATCH --cpus-per-task=16 
#SBATCH --time=01:00:00 

for ((i = 1; i <= 16; i++)); do 
  CILK_NWORKERS=$i time ./othello < default_input 
done
