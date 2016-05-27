# $OpenBSD: Makefile,v 1.3 2016/05/27 12:57:53 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.2.3

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pthread

.include <bsd.port.mk>
