# $OpenBSD: Makefile,v 1.5 2021/10/23 14:42:47 tracey Exp $

COMMENT =		makefile for ESP8266 and ESP32 Arduino projects

GH_ACCOUNT =		plerup
GH_PROJECT =		makeEspArduino
GH_TAGNAME =		6.5.0
REVISIONS =		0

PKGNAME =		makeesparduino-${GH_TAGNAME}

CATEGORIES =		devel

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

#LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS +=		devel/arduino \
			devel/gmake

NO_TEST =		Yes

# NO_BUILD clears all BDEP, so explicitely add MODPY_BUILDDEP
MODPY_BUILDDEP =	Yes
NO_BUILD =		Yes

post-extract:
	sed -i 's,$$(LOCALBASE),${LOCALBASE},' ${WRKDIST}/os/OpenBSD.mk

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/makeEspArduino
	cp -r ${WRKDIST}/*.mk ${PREFIX}/share/makeEspArduino/
	cp -r ${WRKDIST}/os ${PREFIX}/share/makeEspArduino/
	cp -r ${WRKDIST}/tools ${PREFIX}/share/makeEspArduino/

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/makeEspArduino/tools

.include <bsd.port.mk>
