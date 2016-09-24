# $OpenBSD: Makefile,v 1.6 2016/09/24 13:15:07 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.3.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pcap pthread

.include <bsd.port.mk>
