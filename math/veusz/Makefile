# $OpenBSD: Makefile,v 1.15 2017/07/26 22:45:26 sthen Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	1.23.1
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics
REVISION =	1

HOMEPAGE =	http://home.gna.org/veusz/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += lib/qt4/QtGui lib/qt4/QtXml m pthread ${COMPILER_LIBCXX} ${MODPY_WANTLIB}

MASTER_SITES =	http://download.gna.org/veusz/

MODULES =	lang/python \
		x11/qt4

BUILD_DEPENDS =	math/py-numpy \
		x11/py-qt4

RUN_DEPENDS =	math/py-numpy \
		x11/py-qt4
TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
