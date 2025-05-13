COMMENT=	Xfce4 dictionary application

XFCE_VERSION=	0.8.9
XFCE_GOODIE=	xfce4-dict

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/xfce4-panel

WANTLIB += c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl pango-1.0 xfce4panel-2.0 xfce4ui-2 xfce4util

.include <bsd.port.mk>
