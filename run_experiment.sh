#!/bin/bash

export NAME=Default
export JOBS=""

for RUNS in 10 20 30 -1 ; do # 48000 96000 192000 384000 ; do
    export LR=$LR
    export RUNS=$RUNS
    JOB=$($EXECUTOR ./run_single.sh)
    JOBS="${JOBS}:${JOB}"
done

echo $JOBS

if [ $EXECUTOR ] # If we are using slurm...
then
    $EXECUTOR --dependency=afterany:$JOBS ./when_done.sh
fi