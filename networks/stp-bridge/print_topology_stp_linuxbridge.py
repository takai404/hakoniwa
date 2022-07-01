#!/usr/bin/python3
import graphviz
import subprocess
import json
import re
import copy
import sys
import argparse

color_root="black"
color_root="black"
color_designated="limegreen"
color_blocking="red"
color_normal="black"
color_nonfowarding_edge="lightgray"
color_stp_unaware="lightgray"
color_root_bridge="yellow"

def portname_label(ifname):
    """
    convert linux veth interface name to easy-to-read label.
    """
    return re.sub('.*_', '', ifname)

def find_veth_peer_ns(ifname):
    """
    return namespace of the peer interface of the given interface.
    """
    peer_ns=""
    try:
        cmd = subprocess.run("ip -o link show {}".format(ifname), shell=True, encoding='utf-8', capture_output=True)
        m = re.search(r'.*link-netns (\w+)', cmd.stdout)
        peer_ns = m.groups()[0]
    except:
        pass
    return peer_ns

def find_peer_ifname(ifname):
    """
    return peer interface name in default namespace
    """
    peer_ifname=""
    try:
        cmd = subprocess.run("ip -o link show {}".format(ifname), shell=True, encoding='utf-8', capture_output=True)
        m = re.search(r'^\d+: [^@]+@([^:]+):', cmd.stdout)
        peer_ifname = m.groups()[0]
    except:
        pass
    return peer_ifname



parser = argparse.ArgumentParser()
parser.add_argument('-d', '--dir', default='output', help='output directory')
parser.add_argument('-g', '--graphname', default='STP', help='graphviz graph name')
parser.add_argument('-b', '--body', help='body for graphviz')
parser.add_argument('-n', '--no-constraint', action='store_true', help='set "constraint=false" to all edges')
args = parser.parse_args()

constraint_opt = {}
if args.no_constraint:
    constraint_opt["constraint"]="false"

cmd = subprocess.run("ip -json -d link show type bridge", shell=True, capture_output=True)
bridgeinfo = json.loads(cmd.stdout)

cmd = subprocess.run("ip -json -d link show type veth", shell=True, capture_output=True)
linkinfo = json.loads(cmd.stdout)

graph = graphviz.Digraph(args.graphname)

graph.edge_attr = {"labeldistance": "1.5"}

bridge_name2id = {}     # map bridge name to bride ID
bridge_id2name = {}     # map bridge ID to bride name
for bridge in bridgeinfo:
    bridge_id = bridge["linkinfo"]["info_data"]["bridge_id"]
    bridge_name2id[bridge["ifname"]] = bridge_id
    bridge_id2name[bridge_id] = bridge["ifname"]
    root_path_cost = bridge["linkinfo"]["info_data"]["root_path_cost"]

    if root_path_cost == 0:
        root_bridge_opt = {'penwidth': '2', 'style':'filled', 'fillcolor':color_root_bridge}
    else:
        root_bridge_opt = {}
    graph.node(bridge["ifname"],
        label=bridge["ifname"]+"\\n"+bridge_id,
        shape="box",
        **root_bridge_opt
    )

bridge_name_portno2portname = {}    # map bridge name & port No to port name
for ifdata in linkinfo:
    int_name = ifdata["ifname"]
    my_bridge_name = ifdata["master"]
    port_no = ifdata["linkinfo"]["info_slave_data"]["no"]
    if not bridge_name_portno2portname.get(my_bridge_name):
        bridge_name_portno2portname[my_bridge_name] = {}
    bridge_name_portno2portname[my_bridge_name][port_no] = int_name

remaining_ports = copy.deepcopy(bridge_name_portno2portname)
# print root ports and blocking ports (and their counter designated ports)
for ifdata in linkinfo:
    int_name = ifdata["ifname"]
    my_bridge_name = ifdata["master"]
    recv_BPDU_root_path_cost =ifdata["linkinfo"]["info_slave_data"]["designated_cost"] 
    recv_BPDU_bridge_id = ifdata["linkinfo"]["info_slave_data"]["bridge_id"]
    recv_BPDU_port_id = ifdata["linkinfo"]["info_slave_data"]["designated_port"]
    recv_BPDU_port_no = hex(recv_BPDU_port_id & 0x00ff)
    operstate = ifdata["operstate"]
    port_no = ifdata["linkinfo"]["info_slave_data"]["no"]

    if operstate == "DOWN":
        # this port is a disabled port. skip.
        del remaining_ports[my_bridge_name][port_no]
        continue

    if recv_BPDU_bridge_id == bridge_name2id[my_bridge_name]:
        # this port is a designated port. show later.
        continue

    sender_bridge_name = bridge_id2name[recv_BPDU_bridge_id]
    sender_int_name = bridge_name_portno2portname[sender_bridge_name][recv_BPDU_port_no]
    del remaining_ports[sender_bridge_name][recv_BPDU_port_no]
    del remaining_ports[my_bridge_name][port_no]
    port_status = ifdata["linkinfo"]["info_slave_data"]["state"]
    if port_status == "forwarding":
        arrowhead = "odot"
        linecolor = color_normal
        headcolor = color_root
    elif port_status == "blocking":
        arrowhead = "teetee"
        linecolor = color_nonfowarding_edge
        headcolor = color_blocking
    else:
        arrowhead = "none"
        linecolor = color_normal
        headcolor = color_normal

    graph.edge(
        sender_bridge_name,
        my_bridge_name,
        taillabel=portname_label(sender_int_name),
        headlabel=portname_label(int_name),
        arrowtail="dot",
        arrowhead=arrowhead,
        dir="both",
        color="{}:{};0.99:{}".format(color_designated, linecolor, headcolor),
        **constraint_opt
    )

for bridge in remaining_ports.keys():
    for ifname in remaining_ports[bridge].values():
        peer_ns=find_veth_peer_ns(ifname)
        peer_ifname=find_peer_ifname(ifname)
        if peer_ns:
            # print designated port whose counter port is not STP aware.
            graph.node(
                peer_ns,
                shape="box",
                style="filled",
                fillcolor=color_stp_unaware
            )
            graph.edge(
                bridge,
                peer_ns,
                taillabel=portname_label(ifname),
                arrowtail="dot",
                dir="back",
                color="{}:{};0.99:{}".format(color_designated, color_normal, color_normal),
                **constraint_opt
            )
        elif peer_ifname:
            # print disabled (link down) port
            peer_bridge, peer_port = peer_ifname.split('_')
            graph.edge(
                bridge,
                peer_bridge,
                taillabel=portname_label(ifname),
                headlabel=peer_port,
                dir="none",
                color=color_nonfowarding_edge,
                constraint="false"
            )

# graph legend
with graph.subgraph(name="cluster_legend") as l:
    with l.subgraph(graph_attr={"rank":"same"}) as s:
        s.node("h1", shape="none", fixsize="true", width="0", label="")
        s.node("designated", shape="none")
        s.edge("h1", "designated",
            arrowtail="dot",
            dir="back",
            color="{}:{};0.99:{}".format(color_designated, color_normal, color_normal))
    with l.subgraph(graph_attr={"rank":"same"}) as s:
        s.node("h2", shape="none", fixsize="true", width="0", label="")
        s.node("root", shape="none")
        s.edge("h2", "root",
            arrowtail="odot",
            dir="back",
            color="{}:{};0.99:{}".format(color_root, color_normal, color_normal))

    with l.subgraph(graph_attr={"rank":"same"}) as s:
        s.node("h3", shape="none", fixsize="true", width="0", label="")
        s.node("blocking", shape="none")
        s.edge("h3", "blocking",
            arrowtail="teetee",
            dir="back",
            color="{}:{};0.99:{}".format(color_blocking, color_normal, color_normal))

    with l.subgraph(graph_attr={"rank":"same"}) as s:
        s.node("unaware", label="STP\nunaware", shape="box", style="filled", fillcolor=color_stp_unaware)
        s.node("rootbridge", label="Root\nBridge", shape="box", style="filled", fillcolor=color_root_bridge, penwidth="2")

    l.edge("h1", "h2", style="invis")
    l.edge("h2", "h3", style="invis")
    l.edge("h3", "rootbridge", style="invis")
    l.edge("rootbridge", "unaware", style="invis")

if args.body:
    with open(args.body) as f:
        graph.body.append(f.read())
#        m=re.match(r'digraph STP {((.|\s)*)}', f.read())
#        graph.body.append(m.group(1))

print(graph.source)
print("rendered file: ",graph.render(directory=args.dir, format="png"), file=sys.stderr)
exit

################################################################################
# # ip -j -d link show dev access1_e1 type veth | python3 -m json.tool
# [
#     {
#         "ifindex": 15,
#         "link": "core1_e1",
#         "ifname": "access1_e1",
#         "flags": [
#             "BROADCAST",
#             "MULTICAST",
#             "UP",
#             "LOWER_UP"
#         ],
#         "mtu": 1500,
#         "qdisc": "noqueue",
#         "master": "access1",
#         "operstate": "UP",
#         "linkmode": "DEFAULT",
#         "group": "default",
#         "txqlen": 1000,
#         "link_type": "ether",
#         "address": "d2:62:ef:5b:0d:85",
#         "broadcast": "ff:ff:ff:ff:ff:ff",
#         "promiscuity": 1,
#         "min_mtu": 68,
#         "max_mtu": 65535,
#         "linkinfo": {
#             "info_kind": "veth",
#             "info_slave_kind": "bridge",
#             "info_slave_data": {
#                 "state": "forwarding",
#                 "priority": 32,
#                 "cost": 2,
#                 "hairpin": false,
#                 "guard": false,
#                 "root_block": false,
#                 "fastleave": false,
#                 "learning": true,
#                 "flood": true,
#                 "id": "0x8001",
#                 "no": "0x1",
#                 "designated_port": 32770,
#                 "designated_cost": 2,
#                 "bridge_id": "8000.6a:78:dc:b8:a:3d",
#                 "root_id": "8000.6:6e:4:36:2e:c5",
#                 "hold_timer": 0.0,
#                 "message_age_timer": 18.59,
#                 "forward_delay_timer": 0.0,
#                 "topology_change_ack": 0,
#                 "config_pending": 0,
#                 "proxy_arp": false,
#                 "proxy_arp_wifi": false,
#                 "mcast_flood": true,
#                 "mcast_to_unicast": false,
#                 "neigh_suppress": false,
#                 "group_fwd_mask": "0",
#                 "group_fwd_mask_str": "0x0",
#                 "vlan_tunnel": false,
#                 "isolated": false
#             }
#         },
#         "inet6_addr_gen_mode": "eui64",
#         "num_tx_queues": 1,
#         "num_rx_queues": 1,
#         "gso_max_size": 65536,
#         "gso_max_segs": 65535
#     }
# ]

# # ip -j -d link show dev access1 type bridge | python3 -m json.tool
# [
#     {
#         "ifindex": 9,
#         "ifname": "access1",
#         "flags": [
#             "BROADCAST",
#             "MULTICAST",
#             "UP",
#             "LOWER_UP"
#         ],
#         "mtu": 1500,
#         "qdisc": "noqueue",
#         "operstate": "UP",
#         "linkmode": "DEFAULT",
#         "group": "default",
#         "txqlen": 1000,
#         "link_type": "ether",
#         "address": "32:c8:70:0d:8a:30",
#         "broadcast": "ff:ff:ff:ff:ff:ff",
#         "promiscuity": 0,
#         "min_mtu": 68,
#         "max_mtu": 65535,
#         "linkinfo": {
#             "info_kind": "bridge",
#             "info_data": {
#                 "forward_delay": 1500,
#                 "hello_time": 200,
#                 "max_age": 2000,
#                 "ageing_time": 30000,
#                 "stp_state": 1,
#                 "priority": 32768,
#                 "vlan_filtering": 0,
#                 "vlan_protocol": "802.1Q",
#                 "bridge_id": "8000.32:c8:70:d:8a:30",
#                 "root_id": "8000.32:c8:70:d:8a:30",
#                 "root_port": 1,
#                 "root_path_cost": 4,
#                 "topology_change": 0,
#                 "topology_change_detected": 0,
#                 "hello_timer": 0.0,
#                 "tcn_timer": 0.0,
#                 "topology_change_timer": 0.0,
#                 "gc_timer": 182.14,
#                 "vlan_default_pvid": 1,
#                 "vlan_stats_enabled": 0,
#                 "vlan_stats_per_port": 0,
#                 "group_fwd_mask": "0",
#                 "group_addr": "01:80:c2:00:00:00",
#                 "nf_call_iptables": 0,
#                 "nf_call_ip6tables": 0,
#                 "nf_call_arptables": 0
#             }
#         },
#         "inet6_addr_gen_mode": "eui64",
#         "num_tx_queues": 1,
#         "num_rx_queues": 1,
#         "gso_max_size": 65536,
#         "gso_max_segs": 65535
#     }
# ]