COMMENT =	daemon used to register global keyboard shortcuts

NAME =		lxqt-globalkeys

SHARED_LIBS +=  lxqt-globalkeys-ui        0.0 # 1.00
SHARED_LIBS +=  lxqt-globalkeys           0.0 # 1.00

WANTLIB += ${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml SM X11 Xext c gio-2.0 glib-2.0 gobject-2.0 lxqt
WANTLIB += m

LIB_DEPENDS +=		x11/lxqt/liblxqt>=1.0.0

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
