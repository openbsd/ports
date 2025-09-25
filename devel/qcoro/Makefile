COMMENT =	C++ coroutines for Qt

V =		0.12.0
GH_ACCOUNT =	danvratil
GH_PROJECT =	qcoro
GH_TAGNAME =	v${V}

FULLPKGNAME=	qcoro-${V}
REVISION=	1

CATEGORIES =	devel

SHARED_LIBS +=  QCoro6Core                0.0 # 0.0
SHARED_LIBS +=  QCoro6DBus                1.0 # 0.0
SHARED_LIBS +=  QCoro6Network             1.0 # 0.0
SHARED_LIBS +=  QCoro6Qml                 0.1 # 0.0
SHARED_LIBS +=  QCoro6Quick               1.0 # 0.0
SHARED_LIBS +=  QCoro6WebSockets          1.0 # 0.0

HOMEPAGE =	https://qcoro.dvratil.cz/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6WebSockets m

# Coroutines are part of C++ 20 and implemented in GCC 10
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
