# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:38 sthen Exp $

COMMENT =	esp8266 arduino core toolset
V =		2.7.1
DISTNAME =	esp8266-${V}
PKGNAME =	arduino-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Tracey Emery <tracey@openbsd.org>

#LGPLv2.1, MIT, BSD, Zlib
PERMIT_PACKAGE =	Yes

MASTER_SITES = https://github.com/esp8266/Arduino/releases/download/${V}/
EXTRACT_SUFX =		.zip

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODULES =		lang/python

RUN_DEPENDS +=		devel/arduino \
			devel/esptool-ck \
			devel/py-esptool${MODPY_FLAVOR} \
			devel/mkspiffs \
			devel/xtensa-lx106-elf/gcc

INSTALLDIR =		${PREFIX}/share/arduino/hardware/espressif/esp8266

NO_TEST =		Yes

post-patch:
	${SUBST_CMD} ${WRKDIST}/platform.txt

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	@mkdir -p ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}

.include <bsd.port.mk>
