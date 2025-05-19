COMMENT=	modern and minimalist taskbar for Xfce

XFCE_VERSION=	0.5.0
XFCE_PLUGIN=	docklike

# GPLv3
PERMIT_PACKAGE=	Yes

# C++
COMPILER=	base-clang ports-gcc

MODULES=	x11/xfce4 devel/meson
MODXFCE_ICON_CACHE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xi cairo gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtk-layer-shell
WANTLIB += m xfce4ui-2 xfce4util xfce4windowing-0 xfce4windowingui-0

.include <bsd.port.mk>
