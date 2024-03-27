# Pull a base image
FROM ubuntu:23.10

COPY . /opt/grading-env

# Install required packages
RUN apt-get update && apt-get install -y \
  software-properties-common \
  g++-14 \
  g++-12 \
  clang-15 \
  make  \
  cmake \
  python3 \
  python3-pip \
  python3-virtualenv \
  python3-venv

SHELL ["/bin/bash", "-c"]
RUN python3 -m venv pyenv && \
  source pyenv/bin/activate && \
  pip3 install -r /opt/grading-env/requirements.txt

# Setup filesystem
RUN mkdir grade

RUN useradd -ms /bin/bash ag