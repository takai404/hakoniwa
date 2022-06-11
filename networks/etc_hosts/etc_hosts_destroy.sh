#!/bin/sh -x
rm -r /etc/netns/web01
rm -r /etc/netns/ap01
rm -r /etc/netns/db01
ip netns exec web01 ip link del eth0
ip netns exec ap01 ip link del eth1
ip netns del web01
ip netns del ap01
ip netns del db01
