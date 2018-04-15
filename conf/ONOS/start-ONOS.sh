#!/bin/bash

export ONOS_APPS="drivers,openflow,netcfghostprovider,segmentrouting,fpm"
service onos start
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.drivers"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.openflow"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.fwd"

# /opt/onos/karaf/bin/client "app activate org.onosproject.netcfghostprovider"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.segmentrouting"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.fpm"
