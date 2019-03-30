# $OpenBSD: Makefile,v 1.29 2019/03/30 04:42:32 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	6.4.3
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.reference.yml README.md

WANTLIB += c pcap pthread

.include <bsd.port.mk>
