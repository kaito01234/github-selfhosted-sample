#!/bin/bash

# see: https://tech.nri-net.com/entry/ecs_container_stepping_stone
LOGIN_USER="exist"
while :
do
  sleep 600
  LOGIN_USER_NUMBER=`ps -ef | grep ssm-session-worker | grep -v grep | wc -l`

  if [ $LOGIN_USER_NUMBER != 0 ]; then
    LOGIN_USER="exist"
  else
    if [ "$LOGIN_USER" = "no exist" ]; then
      exit 0
    else
      LOGIN_USER="no exist"
    fi
  fi
done
