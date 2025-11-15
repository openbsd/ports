COMMENT=	Xfce4 xkb layout switcher panel plugin

XFCE_VERSION=	0.9.0
XFCE_PLUGIN=	xkb
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS =	x11/gnome/librsvg \
		devel/libnotify \
		devel/libwnck3 \
		x11/gnome/libxklavier>=5.4

WANTLIB += X11 cairo garcon-1 gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 notify pango-1.0 pangocairo-1.0 rsvg-2 wnck-3
WANTLIB += xfce4ui-2 xfce4util xfconf-0 xklavier

.include <bsd.port.mk>
