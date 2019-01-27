# $OpenBSD: Makefile,v 1.20 2019/01/27 15:32:07 jasper Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	6.5.4

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
