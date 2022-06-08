#!/bin/sh -x
{
set -e
# create network namespaces
ip netns add host1
ip netns add router1
ip netns add router2
ip netns add router3
ip netns add router4
ip netns add host2

# create cable(veth pairs)
ip netns exec host1 ip link add eth0 type veth peer name e0 netns router1
ip netns exec router1 ip link add e1 type veth peer name e0 netns router2
ip netns exec router1 ip link add e2 type veth peer name e0 netns router3
ip netns exec router2 ip link add e1 type veth peer name e0 netns router4
ip netns exec router3 ip link add e1 type veth peer name e1 netns router4
ip netns exec router4 ip link add e2 type veth peer name eth0 netns host2

# set IP address: host1
ip netns exec host1 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec host1 ip addr add 10.0.91.100/24 dev eth0

# set IP address: router1
ip netns exec router1 sysctl -w net.ipv4.ip_forward=1
ip netns exec router1 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router1 ip addr add 10.0.91.1/24 dev e0
ip netns exec router1 ip addr add 10.0.12.1/24 dev e1
ip netns exec router1 ip addr add 10.0.13.1/24 dev e2

# set IP address: router2
ip netns exec router2 sysctl -w net.ipv4.ip_forward=1
ip netns exec router2 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router2 ip addr add 10.0.12.2/24 dev e0
ip netns exec router2 ip addr add 10.0.24.2/24 dev e1

# set IP address: router3
ip netns exec router3 sysctl -w net.ipv4.ip_forward=1
ip netns exec router3 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router3 ip addr add 10.0.13.3/24 dev e0
ip netns exec router3 ip addr add 10.0.34.3/24 dev e1

# set IP address: router4
ip netns exec router4 sysctl -w net.ipv4.ip_forward=1
ip netns exec router4 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec router4 ip addr add 10.0.24.4/24 dev e0
ip netns exec router4 ip addr add 10.0.34.4/24 dev e1
ip netns exec router4 ip addr add 10.0.92.4/24 dev e2

# set IP address: host2
ip netns exec host2 sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec host2 ip addr add 10.0.92.100/24 dev eth0

# linkup & set routes (routes can not be set before linkup.)
ip netns exec host1 ip link set lo up
ip netns exec host1 ip link set eth0 up
ip netns exec host1 ip route add default via 10.0.91.1

ip netns exec router1 ip link set lo up
ip netns exec router1 ip link set e0 up
ip netns exec router1 ip link set e1 up
ip netns exec router1 ip link set e2 up

ip netns exec router2 ip link set lo up
ip netns exec router2 ip link set e0 up
ip netns exec router2 ip link set e1 up

ip netns exec router3 ip link set lo up
ip netns exec router3 ip link set e0 up
ip netns exec router3 ip link set e1 up

ip netns exec router4 ip link set lo up
ip netns exec router4 ip link set e0 up
ip netns exec router4 ip link set e1 up
ip netns exec router4 ip link set e2 up

ip netns exec host2 ip link set lo up
ip netns exec host2 ip link set eth0 up
ip netns exec host2 ip route add default via 10.0.92.4

set +e

# run post linkup commands: router1
# create frr config directory if not exists
if [ ! -d "/etc/frr/router1" ]; then
	mkdir "/etc/frr/router1"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router1/vtysh.conf
no service integrated-vtysh-config
hostname router1
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router1/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/router1"

# start frr
/usr/lib/frr/frrinit.sh start "router1"

# ospf setting
ip netns exec router1 vtysh -N router1 -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: router2
# create frr config directory if not exists
if [ ! -d "/etc/frr/router2" ]; then
	mkdir "/etc/frr/router2"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router2/vtysh.conf
no service integrated-vtysh-config
hostname router2
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router2/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/router2"

# start frr
/usr/lib/frr/frrinit.sh start "router2"

# ospf setting
ip netns exec router2 vtysh -N router2 -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: router3
# create frr config directory if not exists
if [ ! -d "/etc/frr/router3" ]; then
	mkdir "/etc/frr/router3"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router3/vtysh.conf
no service integrated-vtysh-config
hostname router3
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router3/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/router3"

# start frr
/usr/lib/frr/frrinit.sh start "router3"

# ospf setting
ip netns exec router3 vtysh -N router3 -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: router4
# create frr config directory if not exists
if [ ! -d "/etc/frr/router4" ]; then
	mkdir "/etc/frr/router4"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router4/vtysh.conf
no service integrated-vtysh-config
hostname router4
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/router4/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/router4"

# start frr
/usr/lib/frr/frrinit.sh start "router4"

# ospf setting
ip netns exec router4 vtysh -N router4 -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run test
i=0
until ip netns exec host1 ping -D -c 3 10.0.92.100; do
  ip netns exec router1 vtysh -N router1 -c 'show ip route'
  if [ $i -gt 90 ]; then
    break
  fi
  sleep 3
  i=`expr $i + 3`
done
ip netns exec host1 traceroute 10.0.92.100

} 2>&1 | tee ospf_build.log
