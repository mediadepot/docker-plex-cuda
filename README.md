# docker-plex-cuda
linuxserver/docker-plex modified to add support for NVidia decoding + additional plugins. 

## Usage

```
docker run \
-d \
--name=plex \
--net=host \
--privileged \
-e VERSION=latest \
-e PUID=15000 -e PGID=15000 \
-e TZ=America/Los_Angeles \
-v /opt/mediadepot/apps/plex:/config \
-v /media/storage/tvshows:/data/tvshows \
-v /media/storage/movies:/data/movies \
-v /media/storage/music:/data/music \
-v /opt/nvidia:/usr/local/nvidia:ro \
--device /dev/nvidiactl \
--device /dev/nvidia-uvm \
--device /dev/nvidia0 \
--label traefik.enable=true \
--label traefik.port=32400 \
mediadepot/plex-cuda
```