QT6NAME =	Qt3D
COMMENT =	Qt6 components for 3D graphics
PKGSPEC =	qt6-qt3d-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt63DAnimation            1.0 # 6.6
SHARED_LIBS +=  Qt63DCore                 1.1 # 6.6
SHARED_LIBS +=  Qt63DExtras               1.0 # 6.6
SHARED_LIBS +=  Qt63DInput                1.0 # 6.6
SHARED_LIBS +=  Qt63DLogic                1.0 # 6.6
SHARED_LIBS +=  Qt63DQuick                1.0 # 6.6
SHARED_LIBS +=  Qt63DQuickAnimation       1.0 # 6.6
SHARED_LIBS +=  Qt63DQuickExtras          1.0 # 6.6
SHARED_LIBS +=  Qt63DQuickInput           1.0 # 6.6
SHARED_LIBS +=  Qt63DQuickRender          2.0 # 6.6
SHARED_LIBS +=  Qt63DQuickScene2D         1.0 # 6.6
SHARED_LIBS +=  Qt63DRender               1.0 # 6.6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6ShaderTools
WANTLIB += assimp c m xkbcommon z

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=      -Dx86=1
.else
PKG_ARGS+=      -Dx86=0
.endif

BUILD_DEPENDS =	x11/qt6/qtmultimedia \
		graphics/vulkan-loader

LIB_DEPENDS =	multimedia/assimp \
		x11/qt6/qtshadertools \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
