COMMENT =	tool for fast making screenshots

VERSION =	3.0.0
REVISION =	0

NAME =		screengrab

SHARED_LIBS +=  extedit                   0.0 # 1.0

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6WindowSystem LayerShellQtInterface
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Svg Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml SM X11 X11-xcb
WANTLIB += Xext c gio-2.0 glib-2.0 gobject-2.0 m wayland-client
WANTLIB += wayland-cursor xcb xcb-shape xcb-xfixes xkbcommon

# wayland includes and protocols
BUILD_DEPENDS +=	wayland/libinput-openbsd \
			wayland/wayland-protocols

LIB_DEPENDS =	devel/kf6/kwindowsystem \
		wayland/wayland \
		x11/kde-plasma/layer-shell-qt \
		x11/lxqt/libqtxdg \
		x11/qt6/qtsvg \
		x11/xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

MODCMAKE_LDFLAGS =   -L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${PREFIX}/share/${NAME}/${NAME}.conf \
		${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
