QT5NAME =		QtRemoteObjects
COMMENT-main =		inter-process communication using Qt5 objects

KDE_COMMIT =		b2740a7c7f5b6ac810240404a947ca5cff9de5f7
KDE_VERSION =		2

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5RemoteObjects                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
