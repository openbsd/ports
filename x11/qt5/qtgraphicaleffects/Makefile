QT5NAME =		QtGraphicalEffects
COMMENT =		UI effects library for Qt Quick

KDE_COMMIT =		551732fb1d963e53af437e3982a010f69eb76253
KDE_VERSION =		0

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
