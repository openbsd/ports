QT6NAME =		QtPositioning
COMMENT =		Qt Positioning API

SHARED_LIBS +=  Qt6Positioning            0.0 # 0.0
SHARED_LIBS +=  Qt6PositioningQuick       0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick c m xkbcommon

LIB_DEPENDS =		x11/qt6/qtdeclarative

BUILD_DEPENDS =		graphics/vulkan-loader

.include <bsd.port.mk>
