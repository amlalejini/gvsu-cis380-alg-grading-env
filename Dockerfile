# Pull a base image
FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
  software-properties-common \
  g++-13 \
  make  \
  cmake \
  python3 \
  python3-pip \
  python3-virtualenv

# Wire g++-13 command to g++
RUN cd /usr/bin/ && ln -s g++-13 g++ && cd /