COMMENT =	QtQuickControls 2 style for painting
DISTNAME =	qqc2-desktop-style-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6IconThemes KirigamiPlatform Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets
WANTLIB += m

LIB_DEPENDS =	devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kiconthemes>=${MODKF6_VERSION} \
		devel/kf6/kirigami>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
