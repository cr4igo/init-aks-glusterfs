#iptables -N HEKETI
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 24007 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 24008 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 2222 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m multiport --dports 49152:49251 -j ACCEPT
#service iptables save

modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool
modprobe fuse

add-apt-repository ppa:gluster/glusterfs-7
apt-get update -y
apt-get install software-properties-common glusterfs-fuse glusterfs-client attr openssh-server vim wget -y
