COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	2.8.0
XFCE_PLUGIN =	whiskermenu

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DENABLE_ACCOUNTS_SERVICE=Off -DENABLE_GTK_LAYER_SHELL=Off
MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS +=	x11/xfce4/exo>=0.11

WANTLIB +=	c cairo exo-2 garcon-1 gdk_pixbuf-2.0 gdk-3 gio-2.0 glib-2.0
WANTLIB +=	gobject-2.0 gtk-3 intl m xfce4ui-2 xfce4util xfconf-0 ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
