COMMENT =	scheduling the dark-light cycle
DISTNAME =	knighttime-${VERSION}

SHARED_LIBS +=  KNightTime                0.0 # 0.0

MODKDE_TRANSLATIONS = Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6DBusAddons KF6Holidays Qt6Core Qt6DBus Qt6Gui Qt6Positioning
WANTLIB += c m

BUILD_DEPENDS =	devel/kf6/ki18n

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kholidays \
		x11/qt6/qtpositioning \

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
