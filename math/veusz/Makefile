COMMENT =	scientific plotting and graphing package
MODPY_DISTV =	3.6.2
DISTNAME =	veusz-${MODPY_DISTV}
CATEGORIES =	math graphics
REVISION =	3

HOMEPAGE =	https://veusz.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += m

SITES =		https://github.com/veusz/veusz/releases/download/${DISTNAME}/

MODULES =	lang/python \
		x11/qt5
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/py-sip \
		math/py-numpy \
		textproc/py-tomli \
		x11/py-qt5

RUN_DEPENDS =	math/py-numpy \
		x11/py-qt5
TEST_DEPENDS =	${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runselftest.py

.include <bsd.port.mk>
