COMMENT =	KDE daemon listening for wall and write messages
DISTNAME =	kwrited-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6I18n KF6Notifications
WANTLIB += KF6Pty Qt6Core Qt6DBus Qt6Gui c m

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kpty \
		devel/kf6/knotifications

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
