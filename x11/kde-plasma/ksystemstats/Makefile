COMMENT =	plugin based system monitoring daemon
DISTNAME =	ksystemstats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5KIOCore KF5Service KF5Solid KSysGuardFormatter
WANTLIB += KSysGuardSystemStats Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network c m udev

MODKDE5_TRANSLATIONS =	Yes

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/solid \
		sysutils/libudev-openbsd \
		x11/kde-plasma/libksysguard

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
