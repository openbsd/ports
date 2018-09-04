# $OpenBSD: Makefile,v 1.26 2018/09/04 12:46:21 espie Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	6.2.4
REVISION =	1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.reference.yml README.md

WANTLIB += c pcap pthread

.include <bsd.port.mk>
