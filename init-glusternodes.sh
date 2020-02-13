#!/bin/bash

modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool
modprobe fuse
# required for ceph, see https://rook.io/docs/rook/v1.2/k8s-pre-reqs.html
modprobe rbd

apt-get update -y
apt-get install software-properties-common -y
add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install -y glusterfs-fuse attr openssh-server vim wget
apt-get install -y glusterfs-client

# required for ceph, see https://rook.io/docs/rook/v1.2/k8s-pre-reqs.html
apt-get install -y lvm2
