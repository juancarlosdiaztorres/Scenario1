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
ovs-vsctl add-br s12
ovs-vsctl add-port s12 eth1
ovs-vsctl add-port s12 eth2
ovs-vsctl add-port s12 eth3
ovs-vsctl add-port s12 eth4
ovs-vsctl set bridge s12 other-config:hwaddr=00:00:00:00:00:12
ovs-vsctl set bridge s12 protocols=OpenFlow13
ovs-vsctl set-controller s12 tcp:10.100.10.1:6633
ovs-vsctl set-fail-mode s12 secure