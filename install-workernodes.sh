modprobe fuse

apt-get update -y
apt-get install software-properties-common -y
add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install -y glusterfs-fuse attr

df -h
