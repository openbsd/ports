# $OpenBSD: Makefile,v 1.3 2016/09/10 13:03:43 ajacoutot Exp $

COMMENT =	lightweight shipper for hw.sensors data

BEAT =		hwsensorsbeat
VERSION =	0.1.2
REVISION =	1

GH_ACCOUNT =	jasperla
GH_PROJECT =	${BEAT}
GH_TAGNAME =	${VERSION}

ELASTIC_BEAT =	No

WANTLIB =	c pthread

CONFIGS =	hwsensorsbeat.yml hwsensorsbeat.template.json

.include <bsd.port.mk>
