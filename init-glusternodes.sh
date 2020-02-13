#!/bin/bash

modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool
modprobe fuse

apt-get update -y
apt-get install software-properties-common -y
add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install -y glusterfs-fuse attr openssh-server vim wget
apt-get install -y glusterfs-client

df -h
