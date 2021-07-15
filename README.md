# xandai/miniconda-cuda

[Docker Hub Link](https://hub.docker.com/r/xandai/miniconda-cuda)

[GitHub Link](https://github.com/x-and-ai/miniconda-cuda)

## Prerequisite

- [Docker](https://docs.docker.com/get-docker/)
- [NVIDIA Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

## Description

This is a nvidia-docker image for Python3 development using Miniconda.

## Tags and Versions

|  tag  | miniconda  |             cuda              |
| :---: | :--------: | :---------------------------: |
| 1.0.0 | py39_4.9.2 | 10.1-cudnn7-devel-ubuntu18.04 |

## Usage

``` sh
docker run --rm -it --gpus all xandai/miniconda-cuda:1.0.0 python -c "print('Hello, world')"
```
