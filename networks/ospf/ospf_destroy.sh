#!/bin/sh -x
# stop frr
/usr/lib/frr/frrinit.sh stop "router1"

# delete frr namespace files
if [ -d "/etc/frr/router1" ]; then
	rm -r "/etc/frr/router1"
fi
# stop frr
/usr/lib/frr/frrinit.sh stop "router2"

# delete frr namespace files
if [ -d "/etc/frr/router2" ]; then
	rm -r "/etc/frr/router2"
fi
# stop frr
/usr/lib/frr/frrinit.sh stop "router3"

# delete frr namespace files
if [ -d "/etc/frr/router3" ]; then
	rm -r "/etc/frr/router3"
fi
# stop frr
/usr/lib/frr/frrinit.sh stop "router4"

# delete frr namespace files
if [ -d "/etc/frr/router4" ]; then
	rm -r "/etc/frr/router4"
fi
ip netns exec host1 ip link del eth0
ip netns exec router1 ip link del e1
ip netns exec router1 ip link del e2
ip netns exec router2 ip link del e1
ip netns exec router3 ip link del e1
ip netns exec router4 ip link del e2
ip netns del host1
ip netns del router1
ip netns del router2
ip netns del router3
ip netns del router4
ip netns del host2
