#!/bin/sh -x
{
set -e
# create network namespaces
ip netns add web01
ip netns add ap01
ip netns add db01

# create cable(veth pairs)
ip netns exec web01 ip link add eth0 type veth peer name eth0 netns ap01
ip netns exec ap01 ip link add eth1 type veth peer name eth1 netns db01

# set IP address: web01
ip netns exec web01 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec web01 ip addr add 10.0.1.10/24 dev eth0

# set IP address: ap01
ip netns exec ap01 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ap01 ip addr add 10.0.1.11/24 dev eth0
ip netns exec ap01 ip addr add 10.0.2.11/24 dev eth1

# set IP address: db01
ip netns exec db01 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec db01 ip addr add 10.0.2.12/24 dev eth1

# linkup & set routes (routes can not be set before linkup.)
ip netns exec web01 ip link set lo up
ip netns exec web01 ip link set eth0 up

ip netns exec ap01 ip link set lo up
ip netns exec ap01 ip link set eth0 up
ip netns exec ap01 ip link set eth1 up

ip netns exec db01 ip link set lo up
ip netns exec db01 ip link set eth1 up

set +e

# run post linkup commands: web01
[ -d /etc/netns/web01 ] || mkdir -p /etc/netns/web01/
cp /etc/hosts /etc/netns/web01/hosts
echo '10.0.1.11 ap01'>>/etc/netns/web01/hosts

# run post linkup commands: ap01
[ -d /etc/netns/ap01 ] || mkdir -p /etc/netns/ap01/
cp /etc/hosts /etc/netns/ap01/hosts
echo '10.0.1.10 web01'>>/etc/netns/ap01/hosts
echo '10.0.2.12 db01'>>/etc/netns/ap01/hosts

# run post linkup commands: db01
[ -d /etc/netns/db01 ] || mkdir -p /etc/netns/db01/
cp /etc/hosts /etc/netns/db01/hosts
echo '10.0.2.11 ap01'>>/etc/netns/db01/hosts

# run test
ip netns exec web01 ping -c 1 ap01
ip netns exec db01 ping -c 1 ap01

} 2>&1 | tee etc_hosts_build.log
