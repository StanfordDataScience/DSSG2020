### What is SLURM? ###
SLRUM is a job-scheduling manager for Unix clusters. It allows easy request for resources and job submission on computing platform such as Nero. A SLURM batch script consists of two parts: resource requests and job steps.
- Resource requests describe the amount of computing resource (CPUs, GPUs, memory, expected run time, etc.) that the job will need to run. These are commands prefixed with `#SBATCH`, and are interpreted by SLURM as parameters describing resource requests and submissions options.
- Job steps describe tasks/scripts that needs to be executed.

### Useful commands for monitoring jobs ###
- `sinfo`: reports the partitions and nodes available
- `squeue -u <SUNetID>`: reports the state of all submitted jobs under the UserID
- `scancel <jobID>` or `scancel -u <SUNetID>`: cancel a pending or running job (the latter aborts all jobs under the UserID)
- `sbatch <submit_file_name>.sbatch`: submit a job script named <submit_file_name>.sbatch

### Sample submit.sbatch script (for Python) ###
You can create the following job submission script on Nero using a text editor such as `vi` by simply typing `vi submit.sbatch` for example. Type `i` to start inserting/editting and `esc :wq` to save and exit the text editor.

Most of the specifications should hopefully be self-explanatory. You should, of course, adjust the setting as deemed appropriate for the script you will be running. Here is a exhaustive [documentation](https://slurm.schedmd.com/sbatch.html) for reference and here is a shorter [cheat-sheet](https://slurm.schedmd.com/pdfs/summary.pdf) for the essentials.

```
#!/bin/bash

#SBATCH --job-name=test
#SBATCH --partition=normal
#SBATCH --nodes=2    
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=2
#SBATCH --mem-per-cpu=2G
#SBATCH --time 00:30:00   # format: d-hh:mm:ss
#SBATCH --output=test.log
#SBATCH --error=test.err

module load anaconda/3

python my_script.py
```
*Note:* `module avail` shows the modules available for loading on the cluster and `module load <name_of_module>` loads the corresponding module.

After submitting the script to the job queue using `sbatch submit.sbatch`, you can easily manage its status with the commands from the previous section. After it finishes running the `my_script.py` file, it will output a log file `test.log` and a file `test.err` that catches any error message (if any) during the execution. You can check out the files using `cat test.err`, for example.
