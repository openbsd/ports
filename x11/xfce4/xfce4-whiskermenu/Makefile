# $OpenBSD: Makefile,v 1.40 2020/07/23 10:38:13 landry Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	2.4.6
XFCE_PLUGIN =	whiskermenu

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS +=	x11/xfce4/exo>=0.11

WANTLIB +=	cairo exo-2 garcon-1 gdk_pixbuf-2.0 gdk-3 gio-2.0 glib-2.0
WANTLIB +=	gobject-2.0 gtk-3 m xfce4ui-2 xfce4util ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
