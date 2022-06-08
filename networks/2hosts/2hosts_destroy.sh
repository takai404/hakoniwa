#!/bin/sh -x
ip netns exec host1 ip link del eth0
ip netns exec router1 ip link del e0
ip netns exec router2 ip link del e1
ip netns del host1
ip netns del router1
ip netns del router2
ip netns del host2
