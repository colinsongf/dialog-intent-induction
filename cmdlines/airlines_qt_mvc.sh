#!/bin/bash

if [[ ! -f data/airlines_qt.pth ]]; then {
    echo Please train airlines qt first
} fi

python train.py --pre-epoch 0 --num-epochs 50 --data-path data/airlines_processed.csv \
    --view1-col first_utterance --view2-col context --label-col tag \
    --model-path data/airlines_qt.pth
