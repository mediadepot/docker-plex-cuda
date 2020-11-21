FROM linuxserver/plex

# CUDA SETUP

# ensure that nvidia-smi is on the PATH
ENV PATH="/usr/local/nvidia/bin:${PATH}"

# add local files
COPY root/ /

# install unzip command
RUN apt-get update && apt-get install -y zip && rm -rf /var/lib/apt/lists/*


