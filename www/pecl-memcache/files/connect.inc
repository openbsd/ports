<?php
# $OpenBSD: connect.inc,v 1.1 2015/06/23 13:44:40 giovanni Exp $
# Configuration file for regression tests
$host="localhost";
$port=11211;
$host2="localhost";
$port2=11211;
$memcache = memcache_connect($host, $port);
?>
