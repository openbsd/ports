COMMENT =	C++ coroutines for Qt

V =		0.10.0
GH_ACCOUNT =	danvratil
GH_PROJECT =	qcoro
GH_TAGNAME =	v${V}
REVISION=	0

CATEGORIES =	devel

SHARED_LIBS +=  QCoro5Core                0.0 # 0.0
SHARED_LIBS +=  QCoro5DBus                0.0 # 0.0
SHARED_LIBS +=  QCoro5Network             0.0 # 0.0
SHARED_LIBS +=  QCoro5Qml                 0.0 # 0.0
SHARED_LIBS +=  QCoro5Quick               0.0 # 0.0
SHARED_LIBS +=  QCoro5WebSockets          0.0 # 0.0

SHARED_LIBS +=  QCoro6Core                0.0 # 0.0
SHARED_LIBS +=  QCoro6DBus                0.0 # 0.0
SHARED_LIBS +=  QCoro6Network             0.0 # 0.0
SHARED_LIBS +=  QCoro6Qml                 0.0 # 0.0
SHARED_LIBS +=  QCoro6Quick               0.0 # 0.0
SHARED_LIBS +=  QCoro6WebSockets          0.0 # 0.0

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

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6WebSockets
WANTLIB += m

MODULES +=	x11/qt6

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtwebsockets
.else
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebSockets m

MODULES +=	x11/qt5

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtwebsockets

CONFIGURE_ARGS =-DCMAKE_DISABLE_FIND_PACKAGE_Qt6=ON \
		-DUSE_QT_VERSION=5
.endif

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
