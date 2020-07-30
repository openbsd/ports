# $OpenBSD: Makefile,v 1.25 2020/07/30 11:01:33 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	7.8.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.{reference.yml,yml} monitors.d
		
WANTLIB += c pthread

.include <bsd.port.mk>
