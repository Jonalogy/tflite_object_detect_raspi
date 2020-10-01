#!/usr/bin/env bash

if [[ $PATH == `pwd`* ]];
then
  echo "Starting with $(python3 --version)" 
  python3 detect_picamera.py \
  --model ./.tmp/detect.tflite \
  --labels ./.tmp/coco_labels.txt
else
  echo "Please create or activate ROBin's virtual environment"
fi
# python detect_picamera.py --model ./.tmp/detect.tflite --labels ./.tmp/coco_labels.txt