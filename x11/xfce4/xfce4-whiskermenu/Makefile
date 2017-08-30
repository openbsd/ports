# $OpenBSD: Makefile,v 1.20 2017/08/30 08:57:15 landry Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	1.7.2
XFCE_PLUGIN =	whiskermenu
REVISION =	1

# skip 2.x for now as it depends on exo 0.11 which is a devel release
PORTROACH=	limit:1.*$$

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo exo-1 garcon-1 gdk-x11-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 ${COMPILER_LIBCXX} xfce4ui-1 xfce4util gdk_pixbuf-2.0

.include <bsd.port.mk>
