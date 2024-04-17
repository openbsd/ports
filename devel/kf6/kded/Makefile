COMMENT =	central daemon of KDE workspaces
DISTNAME =	kded-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6Service Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += c m

BUILD_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kcrash>=${MODKF6_VERSION} \
		devel/kf6/kdbusaddons>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION}

.include <bsd.port.mk>
