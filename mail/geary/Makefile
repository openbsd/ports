# $OpenBSD: Makefile,v 1.32 2016/10/29 15:15:07 jasper Exp $

COMMENT =	lightweight mail user agent

GNOME_PROJECT =	geary
GNOME_VERSION =	0.11.2
REVISION =	0

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	https://wiki.gnome.org/Apps/Geary
MODULES =	devel/cmake devel/dconf x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection
MODGNOME_TOOLS += gtk-update-icon-cache vala yelp

CONFIGURE_ARGS =-DGSETTINGS_COMPILE=OFF \
		-DGSETTINGS_COMPILE_IN_PLACE=OFF \
		-DICON_UPDATE=OFF \
		-DDESKTOP_UPDATE=OFF

LIB_DEPENDS =	mail/gmime \
		www/webkit,gtk3 \
		audio/libcanberra \
		devel/libnotify \
		devel/gobject-introspection \
		devel/libgee

WANTLIB += atk-1.0 c cairo cairo-gobject canberra gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gobject-2.0 gthread-2.0 gtk-3 javascriptcoregtk-3.0
WANTLIB += m notify p11-kit pango-1.0 pangocairo-1.0 secret-1
WANTLIB += soup-2.4 sqlite3 webkitgtk-3.0 xml2 intl girepository-1.0

.include <bsd.port.mk>
