COMMENT =	KDE daemon listening for wall and write messages
DISTNAME =	kwrited-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5Notifications
WANTLIB += KF5Pty Qt5Core Qt5DBus Qt5Gui Qt5Widgets c m

LIB_DEPENDS +=	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kpty \
		devel/kf5/knotifications

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
