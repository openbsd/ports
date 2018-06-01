# $OpenBSD: Makefile,v 1.17 2018/06/01 15:32:04 sthen Exp $

COMMENT =	lightweight shipper for system metrics

BEAT =		metricbeat
VERSION =	6.2.4
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	metricbeat.yml metricbeat.reference.yml README.md

WANTLIB += c pthread

.include <bsd.port.mk>
