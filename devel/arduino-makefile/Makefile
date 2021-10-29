# $OpenBSD: Makefile,v 1.6 2021/10/29 20:59:56 sthen Exp $

COMMENT=	Makefile to build and upload Arduino sketches

GH_ACCOUNT=	sudar
GH_PROJECT=	Arduino-Makefile
GH_TAGNAME=	1.6.0
PKGNAME=	arduino-makefile-${GH_TAGNAME}
REVISION=	1

CATEGORIES=	devel

# LGPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/arduino \
		devel/gmake \
		devel/py-serial${MODPY_FLAVOR} \
		devel/teensyloader

MODULES=	lang/python
MODPY_BUILDDEP=	No
MODPY_ADJ_FILES= bin/ard-reset-arduino bin/robotis-loader

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=       *

do-configure:
	${SUBST_CMD} ${WRKSRC}/Common.mk ${WRKSRC}/Arduino.mk

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arduino-makefile
	cp -r ${WRKDIST}/*.mk ${PREFIX}/share/arduino-makefile/
	${INSTALL_SCRIPT} ${WRKDIST}/bin/ard-reset-arduino ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/bin/robotis-loader ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/ard-reset-arduino.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIST}/robotis-loader.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arduino-makefile
	cp -r ${WRKDIST}/examples/* ${PREFIX}/share/examples/arduino-makefile/
	find ${PREFIX} -type f -name \*.orig -delete

.include <bsd.port.mk>
