modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool
modprobe fuse
apt-get install software-properties-common -y
add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install -y glusterfs-client glusterfs-fuse attr openssh-server vim wget
