#!/bin/bash

export ONOS_APPS="drivers,openflow,proxyarp,sdnip,reactive-routing"
service onos start
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.drivers"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.openflow"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.proxyarp"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.sdnip"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.reactive-routing"
