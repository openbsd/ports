# $OpenBSD: Makefile,v 1.27 2018/10/27 13:22:08 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	6.4.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.reference.yml README.md

WANTLIB += c pcap pthread

.include <bsd.port.mk>
