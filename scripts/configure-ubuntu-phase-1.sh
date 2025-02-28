#!/bin/bash

# For Ubuntu 20.04

echo "#####################"
echo "Running installs"
echo "#####################"

apt-get -q -y update
apt-get -q -y upgrade

apt-get install -q -y awscli

apt-get -q -y update
apt-get install -q -y ubuntu-drivers-common
ubuntu-drivers install
apt-get install -q -y xinit
apt-get install -q -y x11vnc
apt-get install -q -y xterm
apt-get install -q -y libpulse-dev libnss3 libglu1-mesa
apt-get install --reinstall libxcb-xinerama0
apt-get install -q -y python

nvidia-xconfig

apt-get -q -y remove gdm3
apt-get -q -y install xfce4

# turn off display manager
systemctl set-default multi-user.target

echo "#####################"
echo "Finished running installs"
echo "#####################"
