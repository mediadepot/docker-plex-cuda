# docker-plex-cuda
linuxserver/docker-plex modified to add support for NVidia decoding + additional plugins. 

## Usage

```
docker create \
--name=plex \
--net=host \
-e VERSION=latest \
-e PUID=<UID> -e PGID=<GID> \
-e TZ=<timezone> \
-v </path/to/library>:/config \
-v <path/to/tvseries>:/data/tvshows \
-v </path/to/movies>:/data/movies \
-v </path for transcoding>:/transcode \
-v <path for nvidia drivers>:/usr/local/nvidia:ro \
--device /dev/nvidiactl \
--device /dev/nvidia-uvm \
--device /dev/nvidia0 \
linuxserver/plex
```