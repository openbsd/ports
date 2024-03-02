QT6NAME =	QtLocation
COMMENT =	Geo positioning APIs
PKGSPEC =	qt6-qtlocation-${QT6_PKGSPEC}

SHARED_LIBS +=	Qt6Location               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PositioningQuick Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickShapes c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/xkbcommon

.include <bsd.port.mk>
