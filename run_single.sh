#!/bin/bash

CUR=$(pwd)
DIR="experiment/$NAME/R${RUNS}"
mkdir -p $DIR
cd $DIR
echo "$DIR"

R=$( /usr/bin/time -v $CUR/uppaal-533581a/verifyta.sh -s --good-runs $RUNS --total-runs $RUNS --max-iterations 1 --eval-runs 1 $CUR/$NAME/OP__PreShielded.xml 2>&1)
echo "$R" > out
