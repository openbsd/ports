COMMENT =	Qt-based client-side and server-side SOAP component

V =		2.2.0
DISTNAME =	kdsoap-${V}

SHARED_LIBS +=	kdsoap		1.0
SHARED_LIBS +=	kdsoap-server	1.0

SHARED_LIBS +=	kdsoap-qt6                0.0 # 0.0
SHARED_LIBS +=	kdsoap-server-qt6         0.0 # 0.0

CATEGORIES =	net devel

HOMEPAGE =	https://www.kdab.com/development-resources/qt-tools/kd-soap/

# AGPL3 modified
PERMIT_PACKAGE =	Yes

FLAVORS=	qt6
FLAVOR ?=

SITES =		https://github.com/KDAB/KDSoap/releases/download/${DISTNAME}/

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	kdsoap-qt6-${V}
MODULES +=	x11/qt6
WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Xml c m
CONFIGURE_ARGS +=	-DKDSoap_QT6=ON
.else
MODULES +=	x11/qt5
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml c m
CONFIGURE_ARGS +=	-DKDSoap_QT6=OFF
.endif

.include <bsd.port.mk>
