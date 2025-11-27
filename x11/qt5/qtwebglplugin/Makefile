QT5NAME =	QtWebGlPlugin
COMMENT =	QPA WebGL plugin for Qt applications

KDE_COMMIT =		b9aaac72d0853ba48f6bfd710a43df94d83d4701
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
