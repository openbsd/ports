COMMENT =	power management module for LXQt

NAME =		lxqt-powermanagement

WANTLIB += ${COMPILER_LIBCXX} GL KF6IdleTime KF6Solid KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader
WANTLIB += Qt6Xml X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt lxqt-globalkeys
WANTLIB += m xcb xcb-dpms xcb-screensaver

LIB_DEPENDS =	devel/kf6/kidletime \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		x11/lxqt/globalkeys \
		x11/lxqt/liblxqt \
		x11/qt6/qtsvg

BUILD_DEPENDS =	x11/lxqt/build-tools2

RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/upower \
		x11/gtk+4,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
