# $OpenBSD: Makefile,v 1.11 2015/08/25 13:18:27 sthen Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	1.23.1
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics
REVISION =	0

HOMEPAGE =	http://home.gna.org/veusz/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += lib/qt4/QtGui lib/qt4/QtXml m pthread stdc++ ${MODPY_WANTLIB}

MASTER_SITES =	http://download.gna.org/veusz/

MODULES =	lang/python \
		x11/qt4

BUILD_DEPENDS =	math/py-numpy \
		x11/py-qt4

RUN_DEPENDS =	math/py-numpy \
		x11/py-qt4

# Veusz must be installed for the tests to work!
# Otherwise, complains that veusz.compat cannot be found and exits.
do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
