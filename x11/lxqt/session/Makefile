COMMENT =	session manager for LXQt

NAME =		lxqt-session

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6WindowSystem LayerShellQtInterface
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader
WANTLIB += Qt6Xml SM X11 Xext c gio-2.0 glib-2.0 gobject-2.0 lxqt
WANTLIB += m

LIB_DEPENDS =	x11/lxqt/liblxqt \
		x11/kde-plasma/layer-shell-qt

BUILD_DEPENDS =	x11/lxqt/qtxdg-tools \
		x11/lxqt/libqtxdg>=4.0 \
		x11/lxqt/build-tools2 \
		devel/xdg-user-dirs

RUN_DEPENDS =	x11/lxqt/qtxdg-tools \
		devel/xdg-user-dirs \
		devel/desktop-file-utils \
		x11/xscreensaver \
		devel/kf5/oxygen-icons

CONFIGURE_ARGS +=	-DWITH_LIBUDEV=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lxqt-config-session/autostartedit.cpp \
		${WRKSRC}/lxqt-config-session/sessionconfigwindow.cpp \
		${WRKSRC}/lxqt-session/src/wmselectdialog.cpp \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/
	mv ${PREFIX}/share/lxqt/ ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>
