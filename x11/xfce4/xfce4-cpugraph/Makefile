COMMENT=	Xfce4 cpu usage graph panel plugin

XFCE_VERSION=	1.3.0
XFCE_PLUGIN=	cpugraph

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_ICON_CACHE=	Yes

# C++
COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} cairo gdk-3 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
