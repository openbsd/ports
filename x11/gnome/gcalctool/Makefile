# $OpenBSD: Makefile,v 1.68 2013/03/11 11:46:10 espie Exp $

COMMENT=		GTK desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		6.6.2

CATEGORIES=		math

HOMEPAGE=		https://live.gnome.org/Gcalctool

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS+=		x11/gtk+3

# needed to download IMF/ECB rates (Financial mode)
RUN_DEPENDS=		x11/gnome/gvfs

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
