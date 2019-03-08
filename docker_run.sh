#!/usr/bin/env bash
if [ "$1" == "gpu" ]; then
    # docker run --rm --runtime=nvidia -ti -v "$(pwd)":/home/sim \
    #     --network=host -e DISPLAY="$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix \
    #     --privileged --cap-add=SYS_PTRACE simbotic-ros/gpu
    echo "DEPRECATED!!"
    echo "Use docker-compose instead."
    echo "Example: setup.sh && docker-compose up -d"
else
    docker run --rm -ti -v "$(pwd)":/home/sim \
    --network=host -e DISPLAY="$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix \
    --cap-add=SYS_PTRACE simbotic-ros/cpu
fi
