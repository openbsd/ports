# $OpenBSD: Makefile,v 1.1.1.1 2020/04/25 14:02:14 espie Exp $

# author says so
ONLY_FOR_ARCHS= ${LE_ARCHS}

COMMENT =	convert pictures into pdf book

GH_PROJECT = 	tumble
GH_ACCOUNT = 	brouhaha
GH_TAGNAME = 	v0.36

CATEGORIES = 	graphics textproc

# GPL V2
PERMIT_PACKAGE = Yes

WANTLIB =	c jpeg m netpbm tiff z

NO_TEST = Yes

USE_GMAKE =	Yes
BUILD_DEPENDS = devel/bison

LIB_DEPENDS = 	graphics/tiff \
		graphics/jpeg \
		graphics/netpbm

DEBUG_PACKAGES = ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tumble ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tumble
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tumble

.include <bsd.port.mk>
