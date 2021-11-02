# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:23 sthen Exp $

COMMENT =	esp32 arduino core toolset
V =		1.0.4
DISTNAME =	esp32-${V}
PKGNAME =	arduino-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

MAINTAINER =	Tracey Emery <tracey@openbsd.org>

#LGPLv2.1, MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES = https://github.com/espressif/arduino-esp32/releases/download/${V}/
EXTRACT_SUFX =		.zip

MODULES =		lang/python

RUN_DEPENDS +=		devel/arduino \
			devel/py-esptool${MODPY_FLAVOR} \
			devel/mkspiffs \
			devel/xtensa-esp32-elf/gcc

INSTALLDIR =		${PREFIX}/share/arduino/hardware/espressif/esp32

NO_TEST =		Yes

post-patch:
	${SUBST_CMD} ${WRKDIST}/platform.txt

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}/tools

do-install:
	@mkdir -p ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}

.include <bsd.port.mk>
