#!/bin/bash

export NAME=Default

for RUNS in 48000 96000 192000 384000 ; do
    for LR in 2 4 ; do 
        export LR=$LR
        export RUNS=$RUNS
        $EXECUTOR ./run_single.sh
    done
done

export NAME=Div100

for RUNS in 48000 96000 192000 384000 ; do
    for LR in 2 4 ; do 
        export LR=$LR
        export RUNS=$RUNS
        $EXECUTOR ./run_single.sh
    done
done
