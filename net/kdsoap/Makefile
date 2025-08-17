COMMENT =	Qt-based client-side and server-side SOAP component

DISTNAME =	kdsoap-2.2.0
REVISION =	0

SHARED_LIBS +=	kdsoap		1.0
SHARED_LIBS +=	kdsoap-server	1.0

SHARED_LIBS +=	kdsoap-qt6                0.0 # 0.0
SHARED_LIBS +=	kdsoap-server-qt6         0.0 # 0.0

CATEGORIES =	net devel

HOMEPAGE =	https://www.kdab.com/development-resources/qt-tools/kd-soap/

# AGPL3 modified
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Xml c m

SITES =		https://github.com/KDAB/KDSoap/releases/download/${DISTNAME}/

MODULES =	devel/cmake \
		x11/qt6

BUILD_DEPENDS =		devel/boost

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DKDSoap_QT6=ON

.include <bsd.port.mk>
