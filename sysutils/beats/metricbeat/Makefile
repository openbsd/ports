# $OpenBSD: Makefile,v 1.10 2017/08/19 12:54:55 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	5.5.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.template.json \
		metricbeat.template-es2x.json \
		metricbeat.template-es6x.json

WANTLIB += c pthread

.include <bsd.port.mk>
