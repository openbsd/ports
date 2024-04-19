UNLINKED = kf6
COMMENT =	KDE implementation of Status Notifier Items
DISTNAME =	kstatusnotifieritem-${VERSION}

SHARED_LIBS +=  KF6StatusNotifierItem     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Widgets X11 m xkbcommon

LIB_DEPENDS =	devel/kf6/kwindowsystem \
		x11/xkbcommon

.include <bsd.port.mk>
