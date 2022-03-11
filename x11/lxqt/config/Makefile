COMMENT =	tools to configure LXQt and the underlying operating system

NAME =		lxqt-config

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml SM X11 Xcursor Xext Xfixes c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 lxqt m xcb xcb-randr z

LIB_DEPENDS +=		x11/lxqt/liblxqt>=1.0.0 \
			x11/qt5/qtsvg

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# No KF5Screen yet...
CONFIGURE_ARGS +=	-DWITH_MONITOR=No
CONFIGURE_ARGS +=	-DWITH_TOUCHPAD=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lxqt-config-input/keyboardlayoutconfig.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
