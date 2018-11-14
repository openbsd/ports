# $OpenBSD: Makefile,v 1.19 2018/11/14 18:32:03 jasper Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	6.4.3

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.yml heartbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
