QT6NAME =	QtRemoteobjects
COMMENT =	Qt6 Inter-Process Communication module
PKGSPEC =	qt6-qtremoteobjects-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6RemoteObjects          1.0 # 6.5
SHARED_LIBS +=  Qt6RemoteObjectsQml       1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
