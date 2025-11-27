QT5NAME =		QtDataVis3D
COMMENT-main =		Qt5 3D data visualization components

KDE_COMMIT =		d9b988d3c5f9f34b97f3a9ac1347bfb55464cd60
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5DataVisualization    1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
