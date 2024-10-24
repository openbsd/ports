COMMENT =	plugin based system monitoring daemon
DISTNAME =	ksystemstats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Crash KF6I18n
WANTLIB += KF6KIOCore KF6Solid KSysGuardFormatter KSysGuardSystemStats
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml c m udev

MODKDE_TRANSLATIONS =	Yes

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/solid \
		sysutils/libudev-openbsd \
		x11/kde-plasma/libksysguard>=${VERSION} \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
