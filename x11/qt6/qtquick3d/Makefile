QT6NAME =	QtQuick3d
COMMENT =	Quick 3D support for Qt6
PKGSPEC =	qt6-qtquick3d-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Quick3D                3.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DAssetImport     2.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DRuntimeRender   4.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DUtils           2.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DAssetUtils      1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DEffects         1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DGlslParser      1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DHelpers         1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DIblBaker        1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DParticleEffects 1.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DParticles       2.0 # 6.5
SHARED_LIBS +=  Qt6Quick3DHelpersImpl     0.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6ShaderTools
WANTLIB += Qt6Widgets c m xkbcommon z

LIB_DEPENDS =	x11/qt6/qtshadertools \
		x11/qt6/qtdeclarative

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
