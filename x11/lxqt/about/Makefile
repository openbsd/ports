COMMENT =	information about LXQt and the system its running on

NAME =		lxqt-about

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml
WANTLIB += X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS =	devel/kf6/kwindowsystem \
		x11/lxqt/liblxqt \
		x11/lxqt/libqtxdg \
		x11/qt6/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

.include <bsd.port.mk>
