COMMENT=	Xfce4 terminal

XFCE_VERSION=	1.1.5
XFCE_GOODIE=	xfce4-terminal

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		wayland/gtk-layer-shell \
		devel/vte3

CONFIGURE_ARGS +=	-Dlibutempter=disabled

WANTLIB += X11 atk-1.0 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 gtk-layer-shell pango-1.0 pcre2-8
WANTLIB += vte-2.91 xfce4kbd-private-3 xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
