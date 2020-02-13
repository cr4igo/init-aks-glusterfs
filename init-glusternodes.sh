modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool
modprobe fuse
add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install -y software-properties-common glusterfs-fuse glusterfs-client attr openssh-server vim wget
