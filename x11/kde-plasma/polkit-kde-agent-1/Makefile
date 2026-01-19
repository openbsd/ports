COMMENT =	daemon providing a Polkit authentication UI for Plasma

DISTNAME =	polkit-kde-agent-1-${VERSION}
PKGNAME =	polkit-kde-agent-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6I18n KF6I18nQml KF6Notifications KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6Widgets X11 c m polkit-qt6-agent-1 polkit-qt6-core-1

MODKDE_TRANSLATIONS = Yes
MODKDE_ICON_CACHE = Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/knotifications \
		devel/kf6/ki18n \
		devel/kf6/kwindowsystem \
		x11/polkit-qt \
		x11/qt6/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
