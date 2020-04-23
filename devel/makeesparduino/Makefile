# $OpenBSD: Makefile,v 1.1.1.1 2020/04/23 14:31:06 tracey Exp $

COMMENT =		makefile for ESP8266 and ESP32 Arduino projects

GH_ACCOUNT =		plerup
GH_PROJECT =		makeEspArduino
GH_TAGNAME =		4.22.0

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

.include <bsd.port.mk>
