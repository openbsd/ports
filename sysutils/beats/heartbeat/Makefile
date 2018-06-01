# $OpenBSD: Makefile,v 1.17 2018/06/01 15:32:04 sthen Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	6.2.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
