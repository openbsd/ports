# $OpenBSD: Makefile,v 1.46 2019/01/18 20:17:10 ajacoutot Exp $

COMMENT =	lightweight mail user agent

GNOME_PROJECT =	geary
GNOME_VERSION =	0.12.4
REVISION =	1

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail


# Fix build with webkitgtk >= 2.22.0
MASTER_SITES0=		https://gitlab.gnome.org/GNOME/geary/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		5d0f711426d76f878cf9b71f7e8f785199c7cde1.diff:0 \
			0d966950a2cba888873cd3a7f4f42bb7a017dc6d.diff:0 \
			e091f24b00ec421e1aadd5e360d1550e658ad5ef.diff:0

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
WANTLIB += xml2

.include <bsd.port.mk>
