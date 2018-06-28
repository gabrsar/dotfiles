#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


cp ./10-keyboard.conf /etc/X11/xorg.conf.d/ 
