#!/bin/ksh
#
# Simple OpenVPN up/down script for resolvd(8) integration
# Modified from the openresolv script shipped in OpenVPN 2.7.0
# (C) Copyright 2016 Baptiste Daroussin
#               2024 OpenVPN Inc <sales@openvpn.net>
#               2026 Jeremie Courreges-Anglas <jca@wxcvbn.org>
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Example env from openvpn (most are not applied):
#
#   dns_vars_file /tmp/openvpn_dvf_58b95c0c97b2db43afb5d745f986c53c.tmp
#
#      or
#
#   dev tun0
#   script_type dns-up
#   dns_search_domain_1 mycorp.in
#   dns_search_domain_2 eu.mycorp.com
#   dns_server_1_address_1 192.168.99.254
#   dns_server_1_address_2 fd00::99:53
#   dns_server_1_port_1 53
#   dns_server_1_port_2 53
#   dns_server_1_resolve_domain_1 mycorp.in
#   dns_server_1_resolve_domain_2 eu.mycorp.com
#   dns_server_1_dnssec true
#   dns_server_1_transport DoH
#   dns_server_1_sni dns.mycorp.in
#

set -e +u

only_standard_server_ports() {
    i=1
    while true; do
        eval addr=\"\$dns_server_${n}_address_${i}\"
        [ -n "$addr" ] || return 0

        eval port=\"\$dns_server_${n}_port_${i}\"
        [ -z "$port" -o "$port" = "53" ] || return 1

        i=$((i + 1))
    done
}

[ -z "${dns_vars_file}" ] || . "${dns_vars_file}"
: ${script_type:=dns-down}
case "${script_type}" in
dns-up)
    n=1
    while :; do
        eval addr=\"\$dns_server_${n}_address_1\"
        [ -n "$addr" ] || {
            echo "setting DNS failed, no compatible server profile"
            exit 1
        }

        # Skip server profiles which require DNSSEC,
        # secure transport or use a custom port
        eval dnssec=\"\$dns_server_${n}_dnssec\"
        eval transport=\"\$dns_server_${n}_transport\"
        [ -z "$transport" -o "$transport" = "plain" ] \
            && [ -z "$dnssec" -o "$dnssec" = "no" ] \
            && only_standard_server_ports && break

        n=$((n + 1))
    done

    i=1
    maxns=5
    nameservers=""
    while :; do
        maxns=$((maxns - 1))
        [ $maxns -gt 0 ] || break
        eval option=\"\$dns_server_${n}_address_${i}\" || break
        [ "${option}" ] || break
	if [ -n "$nameservers" ]; then
            nameservers="${nameservers} ${option}"
        else
            nameservers="${option}"
        fi
        i=$((i + 1))
    done
    /sbin/route nameserver "${dev}" ${nameservers}
    ;;
dns-down)
    /sbin/route nameserver "${dev}"
    ;;
esac
