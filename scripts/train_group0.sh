#!/usr/bin/env bash

cd ..

GPU_ID=4,5,6,7
GPOUP_ID=0

CUDA_VISIBLE_DEVICES=$GPU_ID python train.py \
    --group=${GPOUP_ID} \
    --num_folds=3 \
    --arch=FPMMs\
    --lr=1e-3 \
    --dataset='remote' \
    --batch_size 4
