COMMENT=	Xfce4 periodical screen locker panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	time-out

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE=	Yes

WANTLIB += X11 cairo gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl xfce4ui-2 xfce4util

.include <bsd.port.mk>
