#!/usr/bin/env Rscript

## R script which uses SLURM variables
job <- as.numeric(Sys.getenv("SLURM_JOB_ID")) # Gets the job ID
task <- as.numeric(Sys.getenv("SLURM_ARRAY_TASK_ID")) # Gets the task number/array number
submit_directory <- Sys.getenv("SLURM_SUBMIT_DIR") # Gets the directory you submitted your job from
user <- Sys.getenv("LOGNAME") # Gets your username

print(paste0("Task ",task," under job ID ",job, " submitted from folder ",submit_directory," by ",user))

Sys.sleep(90)

print("Done")
