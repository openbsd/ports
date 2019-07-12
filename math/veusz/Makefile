# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:47 sthen Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	3.0.1
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics
REVISION =	0

HOMEPAGE =	https://veusz.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5Xml m
WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}

MASTER_SITES =	https://github.com/veusz/veusz/releases/download/${DISTNAME}/

MODULES =	lang/python \
		x11/qt5

BUILD_DEPENDS =	math/py-numpy \
		x11/py-qt5

RUN_DEPENDS =	math/py-numpy \
		x11/py-qt5
TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
