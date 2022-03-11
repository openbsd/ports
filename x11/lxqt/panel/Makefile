COMMENT =	desktop panel for LXQt

NAME =		lxqt-panel

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Solid KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xdg Qt5XdgIconLoader Qt5Xml SM X11 Xcomposite Xdamage
WANTLIB += Xext Xfixes Xrender c dbusmenu-qt5 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 lxqt lxqt-globalkeys lxqt-globalkeys-ui
WANTLIB += m pulse statgrab sysstat-qt5 xcb xcb-damage xcb-util
WANTLIB += xcb-xkb xkbcommon xkbcommon-x11

LIB_DEPENDS +=		x11/lxqt/liblxqt>=1.0.0 \
			x11/lxqt/globalkeys>=1.0.0 \
			x11/lxqt/libsysstat \
			sysutils/libstatgrab \
			devel/kf5/solid \
			x11/dbusmenu-qt \
			audio/pulseaudio

BUILD_DEPENDS +=	x11/lxqt/build-tools

CONFIGURE_ARGS +=	-DSENSORS_PLUGIN=No \
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
