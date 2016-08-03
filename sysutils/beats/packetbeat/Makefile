# $OpenBSD: Makefile,v 1.5 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.2.3
REVISION =	1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pcap pthread

.include <bsd.port.mk>
