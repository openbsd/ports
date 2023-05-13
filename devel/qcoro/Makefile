COMMENT =	C++ coroutines for Qt

GH_ACCOUNT =	danvratil
GH_PROJECT =	qcoro
GH_TAGNAME =	v0.9.0

CATEGORIES =	devel

HOMEPAGE =	https://qcoro.dvratil.cz/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# Coroutines are part of C++ 20 and implemented in GCC 10
COMPILER =	base-clang ports-clang

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		x11/qt5/qtwebsockets

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt6=ON \
			-DUSE_QT_VERSION=5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
