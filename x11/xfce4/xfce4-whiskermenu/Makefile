# $OpenBSD: Makefile,v 1.19 2017/07/26 22:45:35 sthen Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	1.7.2
XFCE_PLUGIN =	whiskermenu
REVISION =	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4 devel/cmake
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo exo-1 garcon-1 gdk-x11-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 ${COMPILER_LIBCXX} xfce4ui-1 xfce4util gdk_pixbuf-2.0

.include <bsd.port.mk>
