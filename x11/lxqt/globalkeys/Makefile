COMMENT =	daemon used to register global keyboard shortcuts

NAME =		lxqt-globalkeys

SHARED_LIBS +=  lxqt-globalkeys-ui        0.0 # 1.00
SHARED_LIBS +=  lxqt-globalkeys           0.0 # 1.00

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml
WANTLIB += SM X11 Xext c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS =	x11/lxqt/liblxqt

BUILD_DEPENDS =	x11/lxqt/build-tools2

RUN_DEPENDS =	devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
