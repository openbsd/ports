QT5NAME =		QtCharts
COMMENT-main =		Qt5 components for drawing 2D charts

KDE_COMMIT =		4e4fc559c61d1fc2542add48d2b3c490214e9936
KDE_VERSION =		3

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Charts                 1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
