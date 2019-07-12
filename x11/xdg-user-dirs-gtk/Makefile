# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:26 sthen Exp $

COMMENT=	integration of xdg-user-dirs into GNOME/gtk+

GNOME_PROJECT=	xdg-user-dirs-gtk
GNOME_VERSION=	0.10
REVISION=	4

CATEGORIES=	x11 devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xext Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=	x11/gnome

BUILD_DEPENDS=	devel/xdg-user-dirs
RUN_DEPENDS=	devel/xdg-user-dirs
LIB_DEPENDS=	x11/gtk+3

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/xdg-user-dirs-gtk/xdg/autostart

.include <bsd.port.mk>
