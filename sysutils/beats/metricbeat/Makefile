# $OpenBSD: Makefile,v 1.2 2017/04/28 17:28:14 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	5.3.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.template.json \
		metricbeat.template-es2x.json

WANTLIB += c pthread

.include <bsd.port.mk>
