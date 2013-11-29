# $OpenBSD: Makefile,v 1.4 2013/11/29 04:33:19 bcallah Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	1.19.1
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics

HOMEPAGE =	http://home.gna.org/veusz/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
