# deep-learning-tools
---
## Image
* [Image Crawler](https://github.com/rune2002/AutoCrawler) forked from [AutoCrawler](https://github.com/YoongiKim/AutoCrawler)

## Model
* [TensorFlow Model Garden](https://github.com/tensorflow/models)
* [Caffe Model Zoo](https://github.com/SnailTyan/caffe-model-zoo)
* [Netscope](https://ethereon.github.io/netscope/quickstart.html) - caffe ptototxt model visualization

## Installation
```bash
docker build -t tensorflow_env .
docker run --gpus all --rm -it -p 8888:8888 -v $PWD:/tf_ws tensorflow_env
```

