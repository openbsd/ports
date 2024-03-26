QT6NAME =	QtWebChannel
COMMENT =	Qt6 seamless HTML/JavaScript integration
PKGSPEC =	qt6-qtwebchannel-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6WebChannel             1.0 # 0.0
SHARED_LIBS +=  Qt6WebChannelQuick        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml c m

BUILD_DEPENDS =	x11/qt6/qtwebsockets
RUN_DEPENDS =	x11/qt6/qtwebsockets

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
