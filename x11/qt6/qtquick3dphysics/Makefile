BROKEN-i386 =	various problems with MMX intrinsics
BROKEN-riscv64 = #error "Unknown architecture"

QT6NAME =	QtQuick3dPhysics
COMMENT =	Quick 3D Physics support for Qt6
PKGSPEC =	qt6-qtquick3dphysics-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Quick3DPhysics         2.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DPhysicsHelpers  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6ShaderTools c m xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtshadertools \
		x11/qt6/qtquick3d \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
