# $OpenBSD: Makefile,v 1.21 2014/09/21 19:00:06 landry Exp $

COMMENT =	lightweight mail user agent

GNOME_PROJECT =	geary
GNOME_VERSION =	0.8.0

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://yorba.org/projects/geary/
MODULES =	devel/cmake devel/dconf x11/gnome devel/gettext

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
		devel/libgee

WANTLIB += atk-1.0 c cairo cairo-gobject canberra fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 javascriptcoregtk-3.0
WANTLIB += m notify pango-1.0 pangocairo-1.0 pangoft2-1.0 secret-1
WANTLIB += soup-2.4 sqlite3 webkitgtk-3.0 xml2 z pthread
WANTLIB += gck-1 gcr-3 gcr-base-3 p11-kit

.include <bsd.port.mk>
