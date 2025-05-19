COMMENT=	Xfce4 clipboard history panel plugin

XFCE_VERSION=	1.7.0
XFCE_PLUGIN=	clipman

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	x11/xfce4/xfconf \
		x11/xfce4/libxfce4ui \
		graphics/libqrencode

WANTLIB += X11 Xtst c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 qrencode wayland-client xfce4ui-2
WANTLIB += xfce4util xfconf-0

BUILD_DEPENDS+=	wayland/wayland-protocols

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xfce4-clipman
	mv ${WRKINST}/etc/xdg/autostart/*.desktop \
		${WRKINST}/etc/xdg/xfce4/panel/*.xml \
		${PREFIX}/share/examples/xfce4-clipman
	rmdir ${WRKINST}/etc/xdg/{autostart,xfce4{/panel,},}

.include <bsd.port.mk>
