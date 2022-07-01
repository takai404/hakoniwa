#!/bin/bash
set -e -u -x -o pipefail
{
# create bridge
ip link add core1 type bridge
ip link add core2 type bridge
ip link add access1 type bridge
ip link add access2 type bridge
ip link add access3 type bridge
ip link add access4 type bridge

# enable STP
ip link set core1 type bridge stp_state 1
ip link set core2 type bridge stp_state 1
ip link set access1 type bridge stp_state 1
ip link set access2 type bridge stp_state 1
ip link set access3 type bridge stp_state 1
ip link set access4 type bridge stp_state 1

# create network namspaces
ip netns add pc1
ip netns add pc2
ip netns add pc3
ip netns add pc4

# create cable(veth pairs)
ip link add core1_e0 type veth peer name core2_e0
ip link add core1_e1 type veth peer name access1_e1
ip link add core1_e2 type veth peer name access3_e1
ip link add core2_e1 type veth peer name access2_e1
ip link add core2_e2 type veth peer name access4_e1
ip link add access1_e0 type veth peer name access2_e0
ip link add access3_e0 type veth peer name access4_e0
ip link add access1_e2 type veth peer name eth0 netns pc1
ip link add access2_e2 type veth peer name eth0 netns pc2
ip link add access3_e2 type veth peer name eth0 netns pc3
ip link add access4_e2 type veth peer name eth0 netns pc4

# PC
ip netns exec pc1 ip addr add 10.0.0.1/24 dev eth0
ip netns exec pc2 ip addr add 10.0.0.2/24 dev eth0
ip netns exec pc3 ip addr add 10.0.0.3/24 dev eth0
ip netns exec pc4 ip addr add 10.0.0.4/24 dev eth0

ip netns exec pc1 ip link set lo up
ip netns exec pc1 ip link set eth0 up

ip netns exec pc2 ip link set lo up
ip netns exec pc2 ip link set eth0 up

ip netns exec pc3 ip link set lo up
ip netns exec pc3 ip link set eth0 up

ip netns exec pc4 ip link set lo up
ip netns exec pc4 ip link set eth0 up

# attach ports to bridges
ip link set core1_e0 master core1
ip link set core1_e1 master core1
ip link set core1_e2 master core1

ip link set core2_e0 master core2
ip link set core2_e1 master core2
ip link set core2_e2 master core2

ip link set access1_e1 master access1
ip link set access1_e0 master access1
ip link set access1_e2 master access1

ip link set access2_e1 master access2
ip link set access2_e0 master access2
ip link set access2_e2 master access2

ip link set access3_e1 master access3
ip link set access3_e0 master access3
ip link set access3_e2 master access3

ip link set access4_e1 master access4
ip link set access4_e0 master access4
ip link set access4_e2 master access4


# linkup
ip link set core1_e0 up
ip link set core1_e1 up
ip link set core1_e2 up
ip link set core1 up

ip link set core2_e0 up
ip link set core2_e1 up
ip link set core2_e2 up
ip link set core2 up

ip link set access1_e1 up
ip link set access1_e0 up
ip link set access1_e2 up
ip link set access1 up

ip link set access2_e1 up
ip link set access2_e0 up
ip link set access2_e2 up
ip link set access2 up

ip link set access3_e1 up
ip link set access3_e0 up
ip link set access3_e2 up
ip link set access3 up

ip link set access4_e1 up
ip link set access4_e0 up
ip link set access4_e2 up
ip link set access4 up

set +e

# run test
bridge -d link show
ip netns exec pc1 ping -D -c 40 10.0.0.2
bridge -d link show
bridge -d link show | grep blocking

} 2>&1 | tee rstp_build.log
