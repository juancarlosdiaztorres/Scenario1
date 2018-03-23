#!/bin/bash

# Load current path
PS1='$ ' . ~/.bashrc

echo 'ONOS_APPS=drivers,openflow,netcfghostprovider,segmentrouting,fpm' >> ~/.bashrc
export ONOS_APPS=drivers,openflow,netcfghostprovider,segmentrouting,fpm
~/onos/tools/dev/bin/onos-setup-karaf clean
cp ~/conf/network-cfg_ipv4.json $KARAF_ROOT/../config/network-cfg.json