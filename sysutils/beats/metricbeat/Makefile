# $OpenBSD: Makefile,v 1.22 2020/04/04 02:57:57 pvk Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	7.6.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.{reference.yml,yml} modules.d

BEATS_MODULES =	Yes

WANTLIB += c pthread

.include <bsd.port.mk>
