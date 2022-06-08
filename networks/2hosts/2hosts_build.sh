#!/bin/sh -x
{
set -e
# create network namespaces
ip netns add host1
ip netns add router1
ip netns add router2
ip netns add host2

# create cable(veth pairs)
ip netns exec host1 ip link add eth0 type veth peer name e1 netns router1
ip netns exec router1 ip link add e0 type veth peer name e0 netns router2
ip netns exec router2 ip link add e1 type veth peer name eth0 netns host2

# set IP address: host1
ip netns exec host1 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec host1 ip addr add 10.0.1.10/24 dev eth0

# set IP address: router1
ip netns exec router1 sysctl -w net.ipv4.ip_forward=1
ip netns exec router1 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router1 ip addr add 10.0.0.1/24 dev e0
ip netns exec router1 ip addr add 10.0.1.1/24 dev e1

# set IP address: router2
ip netns exec router2 sysctl -w net.ipv4.ip_forward=1
ip netns exec router2 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router2 ip addr add 10.0.0.2/24 dev e0
ip netns exec router2 ip addr add 10.0.2.1/24 dev e1

# set IP address: host2
ip netns exec host2 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec host2 ip addr add 10.0.2.10/24 dev eth0

# linkup & set routes (routes can not be set before linkup.)
ip netns exec host1 ip link set lo up
ip netns exec host1 ip link set eth0 up
ip netns exec host1 ip route add default via 10.0.1.1

ip netns exec router1 ip link set lo up
ip netns exec router1 ip link set e1 up
ip netns exec router1 ip link set e0 up
ip netns exec router1 ip route add default via 10.0.0.2

ip netns exec router2 ip link set lo up
ip netns exec router2 ip link set e0 up
ip netns exec router2 ip link set e1 up
ip netns exec router2 ip route add default via 10.0.0.1

ip netns exec host2 ip link set lo up
ip netns exec host2 ip link set eth0 up
ip netns exec host2 ip route add default via 10.0.2.1

set +e

# run test
ip netns exec host1 ping -c 10 10.0.2.10

} 2>&1 | tee 2hosts_build.log
