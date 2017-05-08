# $OpenBSD: Makefile,v 1.3 2017/05/08 19:17:21 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	5.4.0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.template.json \
		metricbeat.template-es2x.json \
		metricbeat.template-es6x.json

WANTLIB += c pthread

.include <bsd.port.mk>
