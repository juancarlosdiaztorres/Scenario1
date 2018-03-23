#!/bin/bash

echo "Open Virtual Switch is starting"
service openvswitch-switch start


while true; do
      if [ -S /var/run/openvswitch/db.sock ]; then
         break
      fi
      sleep 2
done


echo "Open Virtual Switch is being configured"
ovs-vsctl add-br s2
ovs-vsctl add-port s2 eth1
ovs-vsctl add-port s2 eth2
ovs-vsctl set bridge s2 other-config:hwaddr=00:00:00:00:00:02
ovs-vsctl set bridge s2 protocols=OpenFlow13
ovs-vsctl set-controller s2 tcp:10.100.10.1:6633
ovs-vsctl set-fail-mode s2 secure