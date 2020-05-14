# $OpenBSD: Makefile,v 1.23 2020/05/14 21:53:06 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	7.7.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.{reference.yml,yml} monitors.d
		
WANTLIB += c pthread

.include <bsd.port.mk>
