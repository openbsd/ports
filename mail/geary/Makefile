# $OpenBSD: Makefile,v 1.41 2018/06/29 22:16:17 espie Exp $

COMMENT =	lightweight mail user agent

GNOME_PROJECT =	geary
GNOME_VERSION =	0.12.2
REVISION =	2

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
		-DISO_CODE_639_XML=${LOCALBASE}/share/xml/iso-codes/iso_639.xml \
		-DISO_CODE_3166_XML=${LOCALBASE}/share/xml/iso-codes/iso_3166.xml \
		-DCMAKE_REQUIRED_INCLUDES=${LOCALBASE}/include/ \
		-DICON_UPDATE=OFF \
		-DDESKTOP_UPDATE=OFF

RUN_DEPENDS =	devel/iso-codes
BUILD_DEPENDS =	devel/iso-codes
LIB_DEPENDS =	mail/gmime \
		databases/sqlite3 \
		www/webkitgtk4 \
		audio/libcanberra \
		devel/libnotify \
		devel/gobject-introspection \
		devel/libgee \
		textproc/enchant

WANTLIB += atk-1.0 c cairo cairo-gobject canberra enchant gck-1
WANTLIB += gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmime-2.6 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 intl javascriptcoregtk-4.0 m notify p11-kit pango-1.0
WANTLIB += pangocairo-1.0 secret-1 soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2 fribidi

.include <bsd.port.mk>
