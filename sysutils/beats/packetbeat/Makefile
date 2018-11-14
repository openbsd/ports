# $OpenBSD: Makefile,v 1.28 2018/11/14 18:32:03 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	6.4.3

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.reference.yml README.md

WANTLIB += c pcap pthread

.include <bsd.port.mk>
