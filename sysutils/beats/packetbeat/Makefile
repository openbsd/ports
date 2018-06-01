# $OpenBSD: Makefile,v 1.25 2018/06/01 15:32:04 sthen Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	6.2.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.reference.yml README.md

WANTLIB += c pcap pthread

.include <bsd.port.mk>
