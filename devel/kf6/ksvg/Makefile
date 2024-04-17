COMMENT =	KDE components for handling SVGs
DISTNAME =	ksvg-${VERSION}

SHARED_LIBS +=  KF6Svg                    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6ConfigCore
WANTLIB += KF6CoreAddons KF6GuiAddons KirigamiPlatform Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6Svg m

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/kirigami>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
