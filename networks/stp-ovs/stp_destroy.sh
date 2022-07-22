#!/bin/sh -x
ip link del core1_e0 
ip link del core1_e1 
ip link del core1_e2 
ip link del core2_e1 
ip link del core2_e2 
ip link del access1_e0 
ip link del access3_e0 
ip link del access1_e2 
ip link del access2_e2 
ip link del access3_e2 
ip link del access4_e2 
ovs-vsctl del-br core1
ovs-vsctl del-br core2
ovs-vsctl del-br access1
ovs-vsctl del-br access2
ovs-vsctl del-br access3
ovs-vsctl del-br access4
ip netns del pc1
ip netns del pc2
ip netns del pc3
ip netns del pc4
