COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	6.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5Gui Qt5X11Extras
WANTLIB += X11 m

LIB_DEPENDS +=	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
