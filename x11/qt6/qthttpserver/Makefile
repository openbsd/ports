QT6NAME =	QtHTTPServer
COMMENT =	HTTP Server support for Qt6
PKGSPEC =	qt6-qthttpserver-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6HttpServer             1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6WebSockets
WANTLIB += c m

BUILD_DEPENDS =	graphics/glslang

LIB_DEPENDS += x11/qt6/qtwebsockets

.include <bsd.port.mk>
