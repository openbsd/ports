# $OpenBSD: Makefile,v 1.71 2015/06/23 11:30:09 jasper Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.16.3

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m notify pango-1.0 pangocairo-1.0 soup-2.4 z pthread
WANTLIB += pangoft2-1.0 javascriptcoregtk-4.0 webkit2gtk-4.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			www/webkitgtk4

MODGNOME_TOOLS +=	yelp

.include <bsd.port.mk>
