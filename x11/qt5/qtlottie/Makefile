QT5NAME =		QtLottie
COMMENT =		QML API for rendering graphics and animations

KDE_COMMIT =		5f1be885cf4ee0f1eb5400bf0c5d138818fc01d0
KDE_VERSION =		0

SHARED_LIBS +=  Qt5Bodymovin              0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
