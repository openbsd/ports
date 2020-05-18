# $OpenBSD: Makefile,v 1.2 2020/05/18 22:11:43 tracey Exp $

COMMENT =		makefile for ESP8266 and ESP32 Arduino projects

GH_ACCOUNT =		plerup
GH_PROJECT =		makeEspArduino
GH_TAGNAME =		5.0.2

PKGNAME =		makeesparduino-${GH_TAGNAME}

CATEGORIES =		devel

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

#LGPLv2.1
PERMIT_PACKAGE =	Yes

RUN_DEPENDS +=		devel/arduino \
			devel/gmake

NO_TEST =		Yes
NO_BUILD =		Yes

post-patch:
	${SUBST_CMD} ${WRKDIST}/makeEspArduino.mk

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/makeEspArduino
	cp -r ${WRKDIST}/*.mk ${PREFIX}/share/makeEspArduino/
	cp -r ${WRKDIST}/tools ${PREFIX}/share/makeEspArduino/

.include <bsd.port.mk>
