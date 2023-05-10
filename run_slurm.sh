#!/bin/bash

export EXECUTOR="sbatch --out=/dev/null --partition=rome -n1 --mem=3G --time=3:30:00 "
./run_experiment.sh
