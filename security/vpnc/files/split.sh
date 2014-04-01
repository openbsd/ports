#!/bin/sh

# this effectively disables changes to /etc/resolv.conf
INTERNAL_IP4_DNS=

# This sets up split networking regardless
# of the concentrators specifications.
# You can add as many routes as you want,
# but you must set the counter $CISCO_SPLIT_INC
# accordingly
CISCO_SPLIT_INC=1
CISCO_SPLIT_INC_0_ADDR=10.0.0.0
CISCO_SPLIT_INC_0_MASK=255.255.0.0
CISCO_SPLIT_INC_0_MASKLEN=16
CISCO_SPLIT_INC_0_PROTOCOL=0
CISCO_SPLIT_INC_0_SPORT=0
CISCO_SPLIT_INC_0_DPORT=0

. /etc/vpnc-script
