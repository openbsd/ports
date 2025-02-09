BROKEN-i386 =	various problems with MMX intrinsics
BROKEN-riscv64 = #error "Unknown architecture"

QT6NAME =	QtQuick3dPhysics
COMMENT =	Quick 3D Physics support for Qt6
PKGSPEC =	qt6-qtquick3dphysics-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Quick3DPhysics         3.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DPhysicsHelpers  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Quick3D Qt6Quick3DRuntimeRender Qt6Quick3DUtils
WANTLIB += Qt6ShaderTools c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtshadertools \
		x11/qt6/qtquick3d \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
