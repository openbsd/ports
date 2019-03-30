# $OpenBSD: Makefile,v 1.7 2019/03/30 04:42:31 jasper Exp $

COMMENT =	lightweight shipper for hw.sensors data

BEAT =		hwsensorsbeat
VERSION =	0.1.2
REVISION =	4

GH_ACCOUNT =	jasperla
GH_PROJECT =	${BEAT}
GH_TAGNAME =	${VERSION}

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

ELASTIC_BEAT =	No

WANTLIB =	c pthread

CONFIGS =	hwsensorsbeat.yml hwsensorsbeat.template.json

.include <bsd.port.mk>
