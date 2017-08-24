#!/bin/bash

yum install libvirt-daemon-config-network

# FROM KICKSTART
virt-install \ 
  --name guest1-rhel7 \ 
  --memory 2048 \ 
  --vcpus 2 \ 
  --disk size=8 \ 
  --location http://example.com/path/to/os \ 
  --os-variant rhel7 \
  --initrd-inject /path/to/ks.cfg \ 
  --extra-args="ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8" 

  # FROM ISO

  virt-install \ 
  --name guest1-rhel7 \ 
  --memory 2048 \ 
  --vcpus 2 \ 
  --disk size=8 \ 
  --cdrom /path/to/rhel7.iso \ 
  --os-variant rhel7 

  # STATIC bridge 

  --network br0 \
--extra-args "ip=192.168.1.2::192.168.1.1:255.255.255.0:test.example.com:eth0:none"

# SNAPSHOTS

# qemu-img snapshot [ -l | -a snapshot | -c snapshot | -d snapshot ] filename
The accepted arguments are as follows:
-l lists all snapshots associated with the specified disk image.
The apply option, -a, reverts the disk image (filename) to the state of a previously saved snapshot.
-c creates a snapshot (snapshot) of an image (filename).
-d deletes the specified snapshot.