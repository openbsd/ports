QT6NAME =	QtCharts
COMMENT =	Qt6 components for drawing 2D charts
PKGSPEC =	qt6-qtcharts-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Charts                 3.0 # 6.7
SHARED_LIBS +=  Qt6ChartsQml              2.1 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6Widgets c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
