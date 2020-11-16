#!/bin/sh

# @file: schrootxenial-ros.sh sets up ros environment
# @author: xris @cristinaluna
# @date: nov 11 2020

cd ~

# installing ROS
apt-get install -y sudo wget python3 distro-info-data nano cmake  build-essential 
sudo apt-get -f install
wget launchpadlibrarian.net/233789933/lsb-release_9.20160110_all.deb
sudo dpkg -i lsb-release_9.20160110_all.deb
sudo apt-get update
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get install -y curl git
sudo apt-get update
sudo apt-get install -y ros-kinetic-robot-state-publisher ros-kinetic-joint-state-publisher ros-kinetic-serial ros-kinetic-xacro ros-kinetic-roslint ros-kinetic-diagnostics ros-kinetic-dynamic-reconfigure ros-kinetic-angles
sudo apt-get install -y ros-kinetic-geographic-msgs ros-kinetic-tf2-geometry_msgs ros-kinetic-gps-common
sudo apt-get install -y ros-kinetic-usb-cam
sudo apt-get install -y ros-kinetic-laser-proc ros-kinetic-urg-c ros-kinetic-dynamixel-sdk ros-kinetic-qt-build 
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# installing rosdep
sudo apt-get install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool
sudo rosdep init
rosdep update




