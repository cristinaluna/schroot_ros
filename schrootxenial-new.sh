#!/bin/sh

# @file: schrootxenial-new.sh creates a new schroot environment with Ubuntu 16.04 Xenial Xerus
# @author: xris @cristinaluna
# @date: nov 11 2020


# installing debootstrap
sudo apt-get update
sudo apt-get install --assume-yes debootstrap schroot

# new chroot environment
sudo mkdir -p /srv/chroot/kinetic_xenial
sudo debootstrap --variant=buildd --arch=amd64 xenial /srv/chroot/kinetic_xenial http://archive.ubuntu.com/ubuntu/

# copying ros setup file
sudo cp ./schrootxenial-ros.sh /srv/chroot/kinetic_xenial/root/

# chroot login
sudo schroot -c kinetic_xenial











