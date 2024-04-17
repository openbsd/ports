COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}

SHARED_LIBS +=  KF6AuthCore               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui X11 c m polkit-qt6-core-1

LIB_DEPENDS =	devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kwindowsystem>=${MODKF6_VERSION} \
		x11/polkit-qt

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
