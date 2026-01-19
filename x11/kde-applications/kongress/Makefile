COMMENT =	companion application for conference attendees
DISTNAME =	kongress-${VERSION}
CATEGORIES =	x11 productivity
REVISION =	0

HOMEPAGE =	https://invent.kde.org/utilities/kongress

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ConfigCore
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6I18n KF6I18nQml
WANTLIB += KF6Notifications Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Svg
WANTLIB += Qt6Widgets c m

BUILD_DEPENDS =	graphics/kirigami-addons \
		x11/kde-applications/kosmindoormap

RUN_DEPENDS =	graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kcrash \
		devel/kf6/kcalendarcore \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
