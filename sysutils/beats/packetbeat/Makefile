# $OpenBSD: Makefile,v 1.2 2016/05/14 12:52:59 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		packetbeat
VERSION =	1.2.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	packetbeat.yml packetbeat.template.json

WANTLIB += c pthread

.include <bsd.port.mk>
