COMMENT =	notification daemon for LXQt

NAME =		lxqt-notificationd
VERSION =	2.0.1

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem LayerShellQtInterface
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader
WANTLIB += Qt6Xml X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS =	x11/lxqt/liblxqt \
		x11/kde-plasma/layer-shell-qt \
		devel/kf6/kwindowsystem

BUILD_DEPENDS =	x11/lxqt/build-tools2

RUN_DEPENDS =	devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
