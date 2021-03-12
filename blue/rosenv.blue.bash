#!/bin/bash

source /ws/devel/setup.bash

HOSTNAME=`hostname`
export ROS_IP=`host ${HOSTNAME} | sed 's/.* //g'`
export ROS_MASTER_URI=http://$ROS_IP:11311

export ROSIE_MASTER_IP=`host gazebo | sed 's/.* //g'`
export ROSIE_MASTER_URI=http://$ROSIE_MASTER_IP:11311

export MB_LASER_BIRDCAGE_R2000=1
export MB_LASER_BIRDCAGE_R2000_FREQ=50
export MB_LASER_BIRDCAGE_R2000_SAMPLES=3600

export LIBGL_ALWAYS_INDIRECT=0
