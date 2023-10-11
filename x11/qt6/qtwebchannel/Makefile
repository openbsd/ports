QT6NAME =	QtWebChannel
COMMENT =	Qt6 seamless HTML/JavaScript integration
PKGSPEC =	qt6-qtwebchannel-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6WebChannel             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m

BUILD_DEPENDS =		x11/qt6/qtwebsockets
RUN_DEPENDS =		x11/qt6/qtwebsockets

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
