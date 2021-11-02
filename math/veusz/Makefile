# $OpenBSD: Makefile,v 1.30 2021/11/02 00:01:37 sthen Exp $

COMMENT =	scientific plotting and graphing package
MODPY_EGG_VERSION =	3.4
DISTNAME =	veusz-${MODPY_EGG_VERSION}
CATEGORIES =	math graphics
REVISION =	0

HOMEPAGE =	https://veusz.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += m

MASTER_SITES =	https://github.com/veusz/veusz/releases/download/${DISTNAME}/

MODULES =	lang/python \
		x11/qt5
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =	devel/py-sip${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

RUN_DEPENDS =	math/py-numpy${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}
TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
