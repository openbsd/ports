# $OpenBSD: Makefile,v 1.19 2018/11/14 18:32:03 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	6.4.3

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
