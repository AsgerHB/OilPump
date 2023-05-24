#!/bin/bash

export NAME=Default
export JOBS=""

for RUNS in 12000 24000 48000 96000 192000 384000 ; do
    export LR=$LR
    export RUNS=$RUNS
    if [[ $EXECUTOR ]]
    then
        JOB=$($EXECUTOR ./run_single.sh | awk '{print $4}')  # Submit job and extract its ID
        JOBS="${JOBS}:${JOB}"
    else
        ./run_single.sh
    fi
done

echo $JOBS

if [[ $EXECUTOR ]] # If we are using slurm...
then
    $EXECUTOR --dependency=afterany$JOBS ./when_done.sh
fi