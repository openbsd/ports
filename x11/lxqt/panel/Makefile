COMMENT =	desktop panel for LXQt

NAME =		lxqt-panel
VERSION =	2.0.1

WANTLIB += ${COMPILER_LIBCXX} GL KF6Solid KF6WindowSystem LayerShellQtInterface
WANTLIB += Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets
WANTLIB += Qt6Xdg Qt6XdgIconLoader Qt6Xml X11 Xtst c dbusmenu-lxqt
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 lxqt lxqt-globalkeys lxqt-globalkeys-ui
WANTLIB += m pulse statgrab sysstat-qt6 xcb xcb-composite xcb-damage
WANTLIB += xcb-image xcb-randr xcb-render xcb-shape xcb-shm xcb-util
WANTLIB += xcb-xfixes xcb-xkb xkbcommon xkbcommon-x11

LIB_DEPENDS =	x11/lxqt/liblxqt>=2.0.0 \
		x11/lxqt/globalkeys>=2.0.0 \
		x11/lxqt/libsysstat \
		x11/lxqt/libdbusmenu \
		x11/kde-plasma/layer-shell-qt \
		sysutils/libstatgrab \
		devel/kf6/solid \
		audio/pulseaudio

BUILD_DEPENDS =	x11/lxqt/build-tools2 \
		x11/lxqt/menu-data

CONFIGURE_ARGS =	-DSENSORS_PLUGIN=No \
			-DVOLUME_USE_ALSA=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugin-kbindicator/src/x11/kbdlayout.cpp \
		${WRKSRC}/plugin-mainmenu/lxqtmainmenuconfiguration.cpp \
		${WRKSRC}/plugin-directorymenu/directorymenuconfiguration.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}/xdg/lxqt/
	mv ${PREFIX}/share/lxqt/panel.conf \
		${PREFIX}/share/examples/${NAME}/xdg/lxqt/panel.conf

.include <bsd.port.mk>
