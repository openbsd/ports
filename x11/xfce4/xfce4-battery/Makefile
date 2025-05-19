ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	Xfce4 battery monitor panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	battery

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_ICON_CACHE=	Yes

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 xfce4ui-2
WANTLIB += xfce4util

.include <bsd.port.mk>
