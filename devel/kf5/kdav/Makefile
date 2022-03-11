COMMENT =	KDE PIM DAV protocol support library
DISTNAME =	kdav-${VERSION}
CATEGORIES =	devel
EPOCH =		0

SHARED_LIBS +=  KF5DAV       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Xml m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
