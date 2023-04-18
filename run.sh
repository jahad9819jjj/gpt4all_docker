export HOSTNAME=`hostname`
xhost +${HOSTNAME}
docker run -it --platform linux/x86_64 \
--mount type=bind,src=/tmp/.X11-unix,dst=/tmp/.X11-unix \
--mount type=bind,src=/tmp/.X11-unix,dst=/tmp/.XIM-unix \
-e DISPLAY=host.docker.internal:0 gpt4all_container bash