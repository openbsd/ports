COMMENT =	Qt style supporting both QtQuick and QtWidgets
DISTNAME =	union-${VERSION}
PKGNAME =	kde-plasma-${DISTNAME}

SHARED_LIBS +=	Union                     0.0 # 0.0
SHARED_LIBS +=	UnionQuickImpl            0.0 # 0.0
SHARED_LIBS +=	UnionQuickStyle           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6CoreAddons KF6GuiAddons KF6IconThemes KirigamiPlatform
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Widgets c cxx-rust-cssparser
WANTLIB += m

MODKDE_TRANSLATIONS = Yes

LIB_DEPENDS =	graphics/cxx-rust-cssparser \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kiconthemes \
		devel/kf6/kirigami\
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
