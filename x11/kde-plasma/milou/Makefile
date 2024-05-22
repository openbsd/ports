COMMENT =	KDE5 Plasma Search and Launch
DISTNAME =	milou-${VERSION}

SHARED_LIBS =   milou    1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6Runner
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6Widgets m

MODKDE5_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/kf6/kdeclarative \
		devel/kf6/ki18n \
		devel/kf6/ksvg \
		x11/kde-plasma/libplasma>=${VERSION}

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/krunner \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
