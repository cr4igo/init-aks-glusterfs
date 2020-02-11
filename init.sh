#iptables -N HEKETI
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 24007 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 24008 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m tcp --dport 2222 -j ACCEPT
#iptables -A HEKETI -p tcp -m state --state NEW -m multiport --dports 49152:49251 -j ACCEPT
#service iptables save

modprobe dm_snapshot
modprobe dm_mirror
modprobe dm_thin_pool

apt-get update
apt-get install -y glusterfs-fuse

df -h
