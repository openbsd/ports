COMMENT =	KDE global keyboard shortcut daemon

DISTNAME =	kglobalacceld-${VERSION}

SHARED_LIBS +=  KGlobalAccelD             0.0 # 0.0

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6Service KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets X11 c m xcb xcb-keysyms
WANTLIB += xcb-record xcb-xkb xkbcommon

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwindowsystem \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
