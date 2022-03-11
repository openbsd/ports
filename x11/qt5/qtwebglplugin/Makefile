QT5NAME =		QtWebGlPlugin
COMMENT =		QPA WebGL plugin for Qt applications

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebSockets fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 intl m z

LIB_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtwebsockets

FLAVORS =		debug

.include <bsd.port.mk>
