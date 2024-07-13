COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS +=  KF6Crash                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CoreAddons Qt6Core Qt6Gui
WANTLIB += Qt6OpenGL X11 m

LIB_DEPENDS +=	devel/kf6/kcoreaddons>=${MODKF6_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
