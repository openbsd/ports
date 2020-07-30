# $OpenBSD: Makefile,v 1.25 2020/07/30 11:01:34 pvk Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	7.8.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.{reference.yml,yml} modules.d

BEATS_MODULES =	Yes

WANTLIB += c pthread

.include <bsd.port.mk>
