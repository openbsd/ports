COMMENT =	QtQuick module providing high-performance charts
DISTNAME =	kquickcharts-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2 m

SHARED_LIBS +=  QuickCharts               0.0 # 0.0
SHARED_LIBS +=  QuickChartsControls       0.0 # 0.0

BUILD_DEPENDS =	x11/qt6/qtshadertools
RUN_DEPENDS =	x11/qt6/qtshadertools

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
