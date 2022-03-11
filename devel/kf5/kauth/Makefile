COMMENT =	execute actions as privileged user
DISTNAME =	kauth-${VERSION}

SHARED_LIBS +=	KF5Auth		6.0 # 5.54
SHARED_LIBS +=	KF5AuthCore	2.1 # 5.67

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Widgets c m polkit-qt5-core-1

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		x11/polkit-qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
