QT6NAME =	QtGraphs
COMMENT =	Qt6 module to visualize data in 2D and 3D graphs
PKGSPEC =	qt6-qtgraphs-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Graphs                 2.0 # 0.0
SHARED_LIBS +=	Qt6GraphsWidgets          1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Quick3D Qt6Quick3DRuntimeRender Qt6Quick3DUtils
WANTLIB += Qt6QuickShapes Qt6QuickWidgets Qt6ShaderTools Qt6Widgets
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtquick3d \
		x11/qt6/qtshadertools \
		x11/xkbcommon

.include <bsd.port.mk>
