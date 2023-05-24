#!/bin/bash

date > experiment/report.txt
echo >> experiment/report.txt
ls experiment/** >> experiment/$NAME/report.txt
