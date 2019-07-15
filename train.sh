#!/bin/bash

#--train_dir=./logs/  --dataset_dir=./tfrecords  --dataset_name=pascalvoc_2007  --dataset_split_name=train  --model_name=ssd_300_vgg  --checkpoint_path=./checkpoints/ssd_300_vgg.ckpt  --save_summaries_secs=60  --save_interval_secs=600  --weight_decay=0.0005  --optimizer=adam  --learning_rate=0.001  --batch_size=32
DATASET_DIR=./tfrecords
TRAIN_DIR=./logs/
CHECKPOINT_PATH=./checkpoints/ssd_300_vgg.ckpt
python train_ssd_network.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=pascalvoc_2007 \
    --dataset_split_name=train \
    --model_name=ssd_300_vgg \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --save_summaries_secs=60 \
    --save_interval_secs=600 \
    --weight_decay=0.0005 \
    --optimizer=adam \
    --learning_rate=0.001 \
    --batch_size=32

#--train_dir=./logs/train/ --dataset_dir=./tfrecords/train --dataset_name=pascalvoc_2007 --dataset_split_name=train --model_name=ssd_300_vgg --checkpoint_path=./checkpoints/vgg_16.ckpt --checkpoint_model_scope=vgg_16 --checkpoint_exclude_scopes=ssd_300_vgg/conv6,ssd_300_vgg/conv7,ssd_300_vgg/block8,ssd_300_vgg/block9,ssd_300_vgg/block10,ssd_300_vgg/block11,ssd_300_vgg/block4_box,ssd_300_vgg/block7_box,ssd_300_vgg/block8_box,ssd_300_vgg/block9_box,ssd_300_vgg/block10_box,ssd_300_vgg/block11_box --trainable_scopes=ssd_300_vgg/conv6,ssd_300_vgg/conv7,ssd_300_vgg/block8,ssd_300_vgg/block9,ssd_300_vgg/block10,ssd_300_vgg/block11,ssd_300_vgg/block4_box,ssd_300_vgg/block7_box,ssd_300_vgg/block8_box,ssd_300_vgg/block9_box,ssd_300_vgg/block10_box,ssd_300_vgg/block11_box --save_summaries_secs=50  --save_interval_secs=500  --weight_decay=0.0005  --optimizer=adam --learning_rate_decay_type=exponential --learning_rate=0.01 --learning_rate_decay_factor=0.5 --end_learning_rate=0.0001 --num_epochs_per_decay=4.0 --batch_size=32