COMMENT =	launch programs quickly by typing their names

NAME =		lxqt-runner

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem LayerShellQtInterface
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader
WANTLIB += Qt6Xml X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt lxqt-globalkeys
WANTLIB += lxqt-globalkeys-ui m muparser

LIB_DEPENDS =	x11/lxqt/globalkeys \
		x11/kde-plasma/layer-shell-qt \
		devel/kf6/kwindowsystem \
		math/muparser

BUILD_DEPENDS =	x11/lxqt/build-tools2 \
		x11/menu-cache

RUN_DEPENDS =	x11/menu-cache

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
