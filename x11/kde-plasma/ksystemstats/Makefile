COMMENT =	plugin based system monitoring daemon
DISTNAME =	ksystemstats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6KIOCore
WANTLIB += KF6Solid KSysGuardFormatter KSysGuardSystemStats Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network c m udev

MODKDE_TRANSLATIONS =	Yes

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/solid \
		sysutils/libudev-openbsd \
		x11/kde-plasma/libksysguard>=${VERSION}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
