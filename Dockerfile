FROM ubuntu:18.04

ENV LANG=js_JP.UTF-8

RUN apt-get -y update && \
    apt-get -y install tzdata && \
    apt-get install -y \
        python3-dev \
        python3-pip \
        python3-cffi \
        libcairo2 \
        libpango1.0-0 \
        libgdk-pixbuf2.0-0 \
        libffi-dev \
        fonts-takao \
        language-pack-ja-base \
        language-pack-ja \
        shared-mime-info && \
    apt-get -y clean && \
    locale-gen ja_JP.UTF-8 && \
    pip3 install md2pdf
