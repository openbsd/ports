# $OpenBSD: Makefile,v 1.64 2014/03/16 09:12:24 ajacoutot Exp $

COMMENT=		dialogs for GNOME

GNOME_PROJECT=		zenity
GNOME_VERSION=		3.8.0
REVISION=		3

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += javascriptcoregtk-3.0 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 webkitgtk-3.0 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			www/webkit,gtk3

MODGNOME_TOOLS= 	yelp

.include <bsd.port.mk>
