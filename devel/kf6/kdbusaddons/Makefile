UNLINKED = kf6
COMMENT =	KDE convenience classes for DBus
DISTNAME =	kdbusaddons-${VERSION}

SHARED_LIBS +=  KF6DBusAddons             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui c m xkbcommon

LIB_DEPENDS +=		x11/xkbcommon

PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
