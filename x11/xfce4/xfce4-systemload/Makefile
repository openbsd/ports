COMMENT=	Xfce4 cpu/memory/swap/uptime monitor panel plugin

XFCE_VERSION=	1.4.0
XFCE_PLUGIN=	systemload

# BSD
PERMIT_PACKAGE=	Yes

# C++
COMPILER=	base-clang ports-gcc

MODULES=	x11/xfce4 devel/meson
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=	-Dupower-glib=disabled

WANTLIB += gdk-3 glib-2.0 gobject-2.0 gtk-3 gtop-2.0 intl m xfce4ui-2
WANTLIB += xfce4util xfconf-0

.include <bsd.port.mk>
