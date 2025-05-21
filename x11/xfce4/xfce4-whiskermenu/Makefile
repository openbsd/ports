COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	2.10.0
XFCE_PLUGIN =	whiskermenu

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4 devel/meson
CONFIGURE_ARGS =	-Daccountsservice=disabled
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS +=	x11/xfce4/exo>=0.11

WANTLIB += ${COMPILER_LIBCXX} c cairo exo-2 garcon-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtk-layer-shell
WANTLIB += intl m xfce4ui-2 xfce4util xfconf-0

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
