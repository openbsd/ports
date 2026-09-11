COMMENT =	weather application for Plasma Mobile
DISTNAME =	kweather-${VERSION}
CATEGORIES =	x11 geo

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6Crash KF6I18n KF6I18nQml KF6Notifications KF6Runner
WANTLIB += KWeatherCore KirigamiPlatform Plasma Qt6Charts Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Widgets c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons

RUN_DEPENDS =	devel/kf6/kirigami \
		graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kcrash \
		devel/kf6/knotifications \
		x11/kde-applications/kweathercore \
		devel/kf6/krunner \
		devel/kf6/kirigami \
		x11/kde-plasma/libplasma \
		x11/qt6/qtcharts \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
