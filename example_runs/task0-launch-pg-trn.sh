#!/bin/bash

model_copy=1
seed=0
while IFS= read -r line; do
    line_arr=( $line )
    lang=${line_arr[0]}
    echo "Running pointer-generator transformer trn: $lang $seed $model_copy"
    sbatch run-pg-trn.s $lang $seed $model_copy
done < SIG_2020-langs-other.txt
