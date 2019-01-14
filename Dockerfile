FROM linuxserver/plex

# CUDA SETUP

# ensure that nvidia-smi is on the PATH
ENV PATH="/usr/local/nvidia/bin:${PATH}"

# add local files
COPY root/ /