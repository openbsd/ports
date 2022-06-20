QT6NAME =		QtQuick3d
COMMENT =		Quick 3D support for Qt6

SHARED_LIBS +=  Qt6Quick3D                0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DAssetImport     0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DRuntimeRender   0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DUtils           0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DAssetUtils      0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DEffects         0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DGlslParser      0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DHelpers         0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DIblBaker        0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DParticleEffects 0.0 # 0.0
SHARED_LIBS +=  Qt6Quick3DParticles       0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6ShaderTools
WANTLIB += Qt6Widgets c m xkbcommon z

LIB_DEPENDS =	x11/qt6/qtshadertools>=${VERSION},<${NEXT_VERSION} \
		x11/qt6/qtdeclarative>=${VERSION},<${NEXT_VERSION}

BUILD_DEPENDS =		graphics/vulkan-loader

.include <bsd.port.mk>
