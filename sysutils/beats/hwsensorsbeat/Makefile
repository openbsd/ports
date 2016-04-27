# $OpenBSD: Makefile,v 1.1.1.1 2016/04/27 17:47:55 jasper Exp $

COMMENT =	lightweight shipper for hw.sensors data

BEAT =		hwsensorsbeat
VERSION =	0.1.2

GH_ACCOUNT =	jasperla
GH_PROJECT =	${BEAT}
GH_TAGNAME =	${VERSION}

ELASTIC_BEAT =	No

WANTLIB =	c pthread

CONFIGS =	hwsensorsbeat.yml hwsensorsbeat.template.json

.include <bsd.port.mk>
