COMMENT =	KDSoap WS-Discovery client

DISTNAME =	kdsoap-ws-discovery-client-0.4.0

CATEGORIES =	net devel

SHARED_LIBS +=  KDSoapWSDiscoveryClient   0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network kdsoap-qt6 m

HOMEPAGE =	https://www.kdab.com/development-resources/qt-tools/kd-soap/

# AGPL3 modified
PERMIT_PACKAGE =	Yes

SITES =		https://download.kde.org/stable/kdsoap-ws-discovery-client/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/boost

BUILD_DEPENDS +=	devel/kf6/extra-cmake-modules

LIB_DEPENDS =		net/kdsoap,qt6

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
