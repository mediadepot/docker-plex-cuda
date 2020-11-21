FROM linuxserver/plex

# CUDA SETUP

# ensure that nvidia-smi is on the PATH
ENV PATH="/usr/local/nvidia/bin:${PATH}"

# add local files
COPY root/ /
RUN rm -rf /etc/cont-init.d/90-nvdec

# install unzip command
RUN apt-get update && apt-get install -y zip && rm -rf /var/lib/apt/lists/*
