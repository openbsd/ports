# $OpenBSD: Makefile,v 1.7 2021/11/18 16:03:23 tracey Exp $

COMMENT =	esp32 arduino core toolset
V =		2.0.1
DISTNAME =	esp32-${V}
PKGNAME =	arduino-${DISTNAME}

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
	${INSTALL_DATA_DIR} ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}

.include <bsd.port.mk>
