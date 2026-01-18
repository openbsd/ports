COMMENT =	KDE implementation of Status Notifier Items
DISTNAME =	kstatusnotifieritem-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF6StatusNotifierItem     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Widgets X11 m

LIB_DEPENDS =	devel/kf6/kwindowsystem

CONFIGURE_ARGS +=	-DBUILD_PYTHON_BINDINGS=OFF

.include <bsd.port.mk>
