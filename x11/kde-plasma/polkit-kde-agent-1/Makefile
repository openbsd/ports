COMMENT =	daemon providing a Polkit authentication UI for Plasma
DISTNAME =	polkit-kde-agent-1-${VERSION}
PKGNAME =	polkit-kde-agent-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets X11 c m polkit-qt5-agent-1
WANTLIB += polkit-qt5-core-1

MODKDE5_TRANSLATIONS = Yes
MODKDE5_ICON_CACHE = Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		x11/polkit-qt5

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
