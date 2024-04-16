COMMENT =	C++ coroutines for Qt

V =		0.10.0
GH_ACCOUNT =	danvratil
GH_PROJECT =	qcoro
GH_TAGNAME =	v${V}

CATEGORIES =	devel

HOMEPAGE =	https://qcoro.dvratil.cz/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =	qt6
FLAVOR ?=

# Coroutines are part of C++ 20 and implemented in GCC 10
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	qcoro-qt6-${V}
MODULES +=	x11/qt6
BUILD_DEPENDS =	x11/qt6/qtwebsockets
.else
MODULES +=	x11/qt5
BUILD_DEPENDS =	x11/qt5/qtwebsockets

CONFIGURE_ARGS =-DCMAKE_DISABLE_FIND_PACKAGE_Qt6=ON \
		-DUSE_QT_VERSION=5
.endif

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
