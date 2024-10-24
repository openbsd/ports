QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol

KDE_COMMIT =		0231c7c3a17c0320601e7766e7e701db5b9eb0dc
KDE_VERSION =		2

SHARED_LIBS +=  Qt5WebSockets                3.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
