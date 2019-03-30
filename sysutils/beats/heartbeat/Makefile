# $OpenBSD: Makefile,v 1.21 2019/03/30 04:42:31 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	6.5.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
