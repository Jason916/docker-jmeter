#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="justb4/jmeter:5.1.1"

# Finally run
docker stop ${NAME}
docker rm ${NAME}
docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} --user $(id -u):$(id -g) ${IMAGE} $@
