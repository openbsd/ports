# $OpenBSD: Makefile,v 1.24 2020/07/01 12:04:47 pvk Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	7.8.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.{reference.yml,yml} modules.d

BEATS_MODULES =	Yes

WANTLIB += c pthread

.include <bsd.port.mk>
