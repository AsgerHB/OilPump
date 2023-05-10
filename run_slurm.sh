#!/bin/bash

export EXECUTOR="sbatch --out=/dev/null --partition=rome -n1 --mem=8G --time=3:30:00 "
./run_experiment.sh
