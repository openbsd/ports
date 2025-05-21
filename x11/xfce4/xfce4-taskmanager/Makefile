COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.6.0
XFCE_GOODIE=	xfce4-taskmanager

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		devel/libwnck3

WANTLIB += X11 Xmu c cairo cairo-gobject gdk-3 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl wnck-3 xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
