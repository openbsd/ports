# $OpenBSD: Makefile,v 1.19 2015/04/21 18:13:10 sthen Exp $

COMMENT=	integration of xdg-user-dirs into GNOME/gtk+

GNOME_PROJECT=	xdg-user-dirs-gtk
GNOME_VERSION=	0.10
REVISION=	1

CATEGORIES=	x11 devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/xdg-user-dirs
RUN_DEPENDS=	devel/xdg-user-dirs
LIB_DEPENDS=	x11/gtk+3

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/xdg-user-dirs-gtk/xdg/autostart

.include <bsd.port.mk>
