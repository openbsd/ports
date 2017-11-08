# $OpenBSD: Makefile,v 1.13 2017/11/08 11:49:09 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	5.6.4

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.template.json \
		metricbeat.template-es2x.json \
		metricbeat.template-es6x.json

WANTLIB += c pthread

.include <bsd.port.mk>
