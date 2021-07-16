ARG CUDA_IMAGE_TAG=10.2-cudnn8-devel-ubuntu18.04

FROM nvidia/cuda:${CUDA_IMAGE_TAG}

ARG APT_PACKAGES="wget curl git"

ARG CONDA_DOWNLOAD_URL="https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh"

RUN apt-get update \
    && apt-get install -y --no-install-recommends ${APT_PACKAGES} \
    && rm -rf /var/lib/apt/lists/* \
    && wget ${CONDA_DOWNLOAD_URL} -O miniconda_install.sh \
    && bash miniconda_install.sh -b -p /opt/miniconda \
    && rm miniconda_install.sh \
    && /opt/miniconda/bin/conda init
