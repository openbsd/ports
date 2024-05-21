COMMENT =	tool for fast making screenshots

VERSION =	2.8.0

NAME =		screengrab

SHARED_LIBS +=  extedit                   0.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader
WANTLIB += Qt6Xml SM X11 X11-xcb Xext c gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m xcb xcb-shape xcb-xfixes

LIB_DEPENDS =	x11/qt6/qtsvg \
		x11/lxqt/libqtxdg \
		devel/kf6/kwindowsystem

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${PREFIX}/share/${NAME}/${NAME}.conf \
		${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
