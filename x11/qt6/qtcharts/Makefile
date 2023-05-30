QT6NAME =	QtCharts
COMMENT =	Qt6 components for drawing 2D charts
PKGSPEC =	qt6-qtcharts-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Charts                 1.1 # 6.5
SHARED_LIBS +=  Qt6ChartsQml              1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets
WANTLIB += c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
