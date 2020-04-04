# $OpenBSD: Makefile,v 1.22 2020/04/04 02:56:10 pvk Exp $

COMMENT =	lightweight shipper for real-time network analytics

BEAT =		heartbeat
VERSION =	7.6.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	heartbeat.{reference.yml,yml} monitors.d
		
WANTLIB += c pthread

.include <bsd.port.mk>
