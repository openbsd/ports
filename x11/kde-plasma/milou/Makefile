COMMENT =	KDE Plasma Search and Launch
DISTNAME =	milou-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6Runner
WANTLIB += KirigamiPlatform Plasma Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick m

MODKDE_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/kf6/kdeclarative \
		devel/kf6/ki18n \
		devel/kf6/ksvg \

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/krunner \
		devel/kf6/kirigami \
		x11/qt6/qtdeclarative \
		x11/kde-plasma/libplasma>=${VERSION}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
