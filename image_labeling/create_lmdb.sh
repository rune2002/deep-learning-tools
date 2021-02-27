#!/usr/bin/env sh
# Create lmdb inputs
# N.B. set the path to the imagenet train + val data dirs
set -e

LMDB=../lmdb
DATA=../data

# Set RESIZE=true to resize the images to 256x256. Leave as false if images have
# already been resized using another tool.
RESIZE=true
if $RESIZE; then
  RESIZE_HEIGHT=16
  RESIZE_WIDTH=16
else
  RESIZE_HEIGHT=0
  RESIZE_WIDTH=0
fi

if [ ! -d "$DATA" ]; then
  echo "Error: DATA is not a path to a directory: $DATA"
  echo "Set the DATA variable in create_imagenet.sh to the path" \
       "where the image data is stored."
  exit 1
fi

echo "Creating train lmdb..."

GLOG_logtostderr=1 convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    $DATA/ \
    $DATA/train.txt \
    $LMDB/train_lmdb

echo "Creating val lmdb..."

GLOG_logtostderr=1 convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    $DATA/ \
    $DATA/val.txt \
    $LMDB/val_lmdb

echo "Creating test lmdb..."

GLOG_logtostderr=1 convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    $DATA/ \
    $DATA/test.txt \
    $LMDB/test_lmdb

echo "Done."
