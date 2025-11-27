QT5NAME =		QtLottie
COMMENT =		QML API for rendering graphics and animations

KDE_COMMIT =		27ed5a3c95a0810a96fac2a8661ea94d8ea3c44e
KDE_VERSION =		0

SHARED_LIBS +=  Qt5Bodymovin              0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
