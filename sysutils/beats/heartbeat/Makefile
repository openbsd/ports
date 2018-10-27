# $OpenBSD: Makefile,v 1.18 2018/10/27 13:22:07 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	6.4.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
