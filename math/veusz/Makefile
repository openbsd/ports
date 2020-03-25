# $OpenBSD: Makefile,v 1.24 2020/03/25 20:03:50 bcallah Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	3.2.1
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics

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
