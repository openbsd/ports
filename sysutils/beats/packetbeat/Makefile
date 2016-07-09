# $OpenBSD: Makefile,v 1.4 2016/07/09 08:46:25 sthen Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.2.3
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pcap pthread

.include <bsd.port.mk>
