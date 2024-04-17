COMMENT =	KDE widgets for showing progress of asynchronous jobs
DISTNAME =	kjobwidgets-${VERSION}

SHARED_LIBS +=  KF6JobWidgets             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6Notifications
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += m xkbcommon

LIB_DEPENDS =	devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/knotifications>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		x11/xkbcommon

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
