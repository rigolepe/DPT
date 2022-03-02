FROM nvidia/cuda:11.6.0-runtime-ubuntu20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates git wget sudo python3-dev python3-pip bzip2 ffmpeg && \
    rm -rf /var/lib/apt/lists/*
RUN ln -sv /usr/bin/python3 /usr/bin/python && \
    pip3 install --upgrade pip 

# create a non-root user
ARG USER_ID=1000
RUN useradd -m --no-log-init --system  --uid ${USER_ID} appuser -g sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER appuser
ENV HOME=/home/appuser
WORKDIR $HOME
ENV PATH=/home/appuser/.local/bin:$PATH 

WORKDIR /work
RUN sudo chmod -R 777 /work
ENV PYTHONPATH=/work/:$PYTHONPATH

CMD ["bash"]