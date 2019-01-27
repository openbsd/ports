# $OpenBSD: Makefile,v 1.20 2019/01/27 15:32:19 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	6.5.4

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
