#!/bin/bash -ue

# default namespace
(ip -br link show type veth; ip -br link show type bridge) \
	| awk '{gsub(/@.*/,"",$1); print ","$1","$3}' \
	| sort

# each namespaces
for ns in `ip netns | awk '{print $1}' | sort`; do
	(ip -n $ns -br link show type veth; ip -n $ns -br link show type bridge) \
		| awk '{gsub(/@.*/,"",$1); print "'$ns',"$1","$3}' \
		| sort
done
