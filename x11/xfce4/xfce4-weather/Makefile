COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.12.0
XFCE_PLUGIN=	weather
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	textproc/libxml \
		devel/json-c \
		devel/libsoup3 \
		sysutils/upower

CONFIGURE_ARGS +=-Dupower-glib=enabled

WANTLIB += cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 json-c m pango-1.0 soup-3.0 upower-glib xfce4ui-2
WANTLIB += xfce4util xfconf-0 xml2

.include <bsd.port.mk>
