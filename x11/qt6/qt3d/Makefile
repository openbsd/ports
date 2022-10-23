QT6NAME =		Qt3D
COMMENT =		Qt6 components for 3D graphics
REVISION =		1

SHARED_LIBS +=  Qt63DAnimation            0.0 # 0.0
SHARED_LIBS +=  Qt63DCore                 0.0 # 0.0
SHARED_LIBS +=  Qt63DExtras               0.0 # 0.0
SHARED_LIBS +=  Qt63DInput                0.0 # 0.0
SHARED_LIBS +=  Qt63DLogic                0.0 # 0.0
SHARED_LIBS +=  Qt63DQuick                0.0 # 0.0
SHARED_LIBS +=  Qt63DQuickAnimation       0.0 # 0.0
SHARED_LIBS +=  Qt63DQuickExtras          0.0 # 0.0
SHARED_LIBS +=  Qt63DQuickInput           0.0 # 0.0
SHARED_LIBS +=  Qt63DQuickRender          0.0 # 0.0
SHARED_LIBS +=  Qt63DQuickScene2D         0.0 # 0.0
SHARED_LIBS +=  Qt63DRender               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6ShaderTools
WANTLIB += assimp c m xkbcommon

BUILD_DEPENDS =		x11/qt6/qtmultimedia \
			graphics/vulkan-loader

LIB_DEPENDS =		multimedia/assimp \
			x11/qt6/qtshadertools \
			x11/qt6/qtdeclarative


.include <bsd.port.mk>
