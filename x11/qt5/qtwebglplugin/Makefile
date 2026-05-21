QT5NAME =	QtWebGlPlugin
COMMENT =	QPA WebGL plugin for Qt applications

KDE_COMMIT =		2a8ce0a61b4b9e892d948948182d935fa6792a1b
KDE_VERSION =		0

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebSockets fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 intl m z

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtwebsockets

FLAVORS =	debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
