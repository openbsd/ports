QT6NAME =		QtQuick3d
COMMENT =		Quick 3D support for Qt6

SHARED_LIBS +=  Qt6Quick3D               0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DAssetImport    0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DRuntimeRender  0.0 # 6.0
SHARED_LIBS +=  Qt6Quick3DUtils          0.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6ShaderTools assimp
WANTLIB += c m

LIB_DEPENDS =	multimedia/assimp \
		x11/qt6/qtshadertools>=${VERSION},<${NEXT_VERSION} \
		x11/qt6/qtdeclarative>=${VERSION},<${NEXT_VERSION}

.include <bsd.port.mk>
