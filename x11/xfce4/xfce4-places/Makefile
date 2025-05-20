COMMENT=	Xfce4 places panel plugin

XFCE_VERSION=	1.9.0
XFCE_PLUGIN=	places

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

LIB_DEPENDS +=	devel/libnotify \
		x11/xfce4/xfconf

WANTLIB += cairo exo-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 notify xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
