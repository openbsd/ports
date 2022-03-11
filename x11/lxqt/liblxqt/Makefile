COMMENT =	core utility library for all LXQt components

NAME =		liblxqt

SHARED_LIBS +=  lxqt                      1.0 # 1.0.0

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml X11 Xss c gio-2.0 glib-2.0 gobject-2.0 m

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			devel/kf5/kwindowsystem \
			x11/lxqt/libqtxdg

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			x11/polkit-qt5

RUN_DEPENDS +=		x11/polkit-qt5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}/xdg
	mv ${PREFIX}/share/lxqt ${PREFIX}/share/examples/${NAME}/xdg/

.include <bsd.port.mk>
