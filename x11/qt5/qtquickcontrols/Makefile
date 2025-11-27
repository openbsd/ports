QT5NAME =		QtQuickControls
COMMENT-main =		Qt Quick based UI controls

KDE_COMMIT =		0c3c18bf8bdac1ef1afdb8aade903edb5c2bc041
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
