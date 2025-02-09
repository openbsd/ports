QT6NAME =	QtQuick3d
COMMENT =	Quick 3D support for Qt6
PKGSPEC =	qt6-qtquick3d-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Quick3D                6.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DAssetImport     2.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DRuntimeRender   6.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DUtils           5.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DAssetUtils      2.1 # 6.7
SHARED_LIBS +=  Qt6Quick3DEffects         1.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DGlslParser      1.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DHelpers         2.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DIblBaker        1.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DParticleEffects 1.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DParticles       2.0 # 6.7
SHARED_LIBS +=  Qt6Quick3DHelpersImpl     1.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6ShaderTools Qt6Widgets
WANTLIB += assimp c m xkbcommon z

WANTLIB += lib/inotify/inotify

LIB_DEPENDS =	multimedia/assimp \
		devel/libinotify \
		x11/qt6/qtdeclarative \
		x11/qt6/qtshadertools \
		x11/xkbcommon

.include <bsd.port.mk>
