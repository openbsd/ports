# $OpenBSD: Makefile,v 1.7 2016/10/10 17:28:56 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.3.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pcap pthread

.include <bsd.port.mk>
