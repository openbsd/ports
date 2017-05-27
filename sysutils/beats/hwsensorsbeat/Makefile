# $OpenBSD: Makefile,v 1.4 2017/05/27 13:55:59 ajacoutot Exp $

COMMENT =	lightweight shipper for hw.sensors data

BEAT =		hwsensorsbeat
VERSION =	0.1.2
REVISION =	2

GH_ACCOUNT =	jasperla
GH_PROJECT =	${BEAT}
GH_TAGNAME =	${VERSION}

ELASTIC_BEAT =	No

WANTLIB =	c pthread

CONFIGS =	hwsensorsbeat.yml hwsensorsbeat.template.json

.include <bsd.port.mk>
