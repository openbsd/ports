COMMENT =	core utility library for all LXQt components

NAME =		liblxqt

SHARED_LIBS +=  lxqt                      2.0 # 1.0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml
WANTLIB += X11 Xss c gio-2.0 glib-2.0 gobject-2.0 m

LIB_DEPENDS =	devel/kf6/kwindowsystem \
		x11/lxqt/libqtxdg>=4.0.0

BUILD_DEPENDS =	x11/lxqt/build-tools2 \
		x11/polkit-qt

RUN_DEPENDS =	x11/polkit-qt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}/xdg
	mv ${PREFIX}/share/lxqt ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>
