QT5NAME =		QtWebChannel
COMMENT-main =		Qt5 seamless HTML/JavaScript integration

KDE_COMMIT =		6d2f0c3a36d9b2cdcd759a464c608365a0afda98
KDE_VERSION =		3
REVISION-example =	0

SHARED_LIBS +=  Qt5WebChannel            2.1 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

BUILD_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtwebsockets>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
