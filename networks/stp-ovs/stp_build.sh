#!/bin/bash
set -e -u -x -o pipefail
{
# create network namespaces
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

# set IP address: core1
#   create openvswitch bridge
ovs-vsctl add-br core1
#   create openvswitch ports
ovs-vsctl add-port core1 core1_e0
ovs-vsctl add-port core1 core1_e1
ovs-vsctl add-port core1 core1_e2
ovs-vsctl set Bridge core1 stp_enable=true

# set IP address: core2
#   create openvswitch bridge
ovs-vsctl add-br core2
#   create openvswitch ports
ovs-vsctl add-port core2 core2_e0
ovs-vsctl add-port core2 core2_e1
ovs-vsctl add-port core2 core2_e2
ovs-vsctl set Bridge core2 stp_enable=true

# set IP address: access1
#   create openvswitch bridge
ovs-vsctl add-br access1
#   create openvswitch ports
ovs-vsctl add-port access1 access1_e1
ovs-vsctl add-port access1 access1_e0
ovs-vsctl add-port access1 access1_e2
ovs-vsctl set Bridge access1 stp_enable=true

# set IP address: access2
#   create openvswitch bridge
ovs-vsctl add-br access2
#   create openvswitch ports
ovs-vsctl add-port access2 access2_e1
ovs-vsctl add-port access2 access2_e0
ovs-vsctl add-port access2 access2_e2
ovs-vsctl set Bridge access2 stp_enable=true

# set IP address: access3
#   create openvswitch bridge
ovs-vsctl add-br access3
#   create openvswitch ports
ovs-vsctl add-port access3 access3_e1
ovs-vsctl add-port access3 access3_e0
ovs-vsctl add-port access3 access3_e2
ovs-vsctl set Bridge access3 stp_enable=true

# set IP address: access4
#   create openvswitch bridge
ovs-vsctl add-br access4
#   create openvswitch ports
ovs-vsctl add-port access4 access4_e1
ovs-vsctl add-port access4 access4_e0
ovs-vsctl add-port access4 access4_e2
ovs-vsctl set Bridge access4 stp_enable=true

# set IP address: pc1
ip netns exec pc1 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec pc1 ip addr add 10.0.0.1/24 dev eth0

# set IP address: pc2
ip netns exec pc2 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec pc2 ip addr add 10.0.0.2/24 dev eth0

# set IP address: pc3
ip netns exec pc3 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec pc3 ip addr add 10.0.0.3/24 dev eth0

# set IP address: pc4
ip netns exec pc4 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec pc4 ip addr add 10.0.0.4/24 dev eth0

# linkup & set routes (routes can not be set before linkup.)
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

ip netns exec pc1 ip link set eth0 up

ip netns exec pc2 ip link set eth0 up

ip netns exec pc3 ip link set eth0 up

ip netns exec pc4 ip link set eth0 up

set +e

# run test
ovs-appctl stp/show
ip netns exec pc1 ping -D -c 50 10.0.0.2
ovs-appctl stp/show

} 2>&1 | tee stp_build.log
