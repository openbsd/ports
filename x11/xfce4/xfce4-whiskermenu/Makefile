# $OpenBSD: Makefile,v 1.26 2018/07/16 05:44:11 landry Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	2.2.1
XFCE_PLUGIN =	whiskermenu

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes
LIB_DEPENDS +=	x11/xfce4/exo>=0.11
MODXFCE_WANTLIB=	xfce4panel-2.0

WANTLIB +=	cairo exo-2 garcon-1 gdk_pixbuf-2.0 gdk-3 gio-2.0 glib-2.0
WANTLIB +=	gobject-2.0 gtk-3 xfce4ui-2 xfce4util ${COMPILER_LIBCXX}

.include <bsd.port.mk>
