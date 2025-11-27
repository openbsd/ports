QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol

KDE_COMMIT =		0f910acb737cefc889ce1088fc60d15bc18efe9c
KDE_VERSION =		2

SHARED_LIBS +=  Qt5WebSockets                3.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
