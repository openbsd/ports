COMMENT =	speed up for applications inside KDE workspaces
DISTNAME =	kinit-${VERSION}

SHARED_LIBS =	kdeinit5_klauncher	6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets X11 c m xcb

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =		devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =		devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kcrash>=${MODKF5_VERSION} \
			devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kservice>=${MODKF5_VERSION} \
			devel/kf5/kwindowsystem>=${MODKF5_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Libcap=ON

.include <bsd.port.mk>
