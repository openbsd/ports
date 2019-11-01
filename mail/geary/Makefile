# $OpenBSD: Makefile,v 1.57 2019/11/01 22:09:30 ajacoutot Exp $

COMMENT =	lightweight mail user agent

GNOME_PROJECT =	geary
GNOME_VERSION =	3.34.1
REVISION =	0

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://wiki.gnome.org/Apps/Geary
MODULES =	devel/meson devel/dconf x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection
MODGNOME_TOOLS += gtk-update-icon-cache vala yelp

CONFIGURE_ARGS =-Dlibunwind_optional=true \
		-Diso_639_xml=${LOCALBASE}/share/xml/iso-codes/iso_639.xml \
		-Diso_3166_xml=${LOCALBASE}/share/xml/iso-codes/iso_3166.xml

RUN_DEPENDS =	devel/iso-codes
BUILD_DEPENDS =	devel/iso-codes
BUILD_DEPENDS += devel/appstream-glib

LIB_DEPENDS =	mail/gmime \
		net/telepathy/folks \
		x11/gnome/online-accounts \
		x11/libhandy \
		databases/sqlite3 \
		www/webkitgtk4 \
		audio/libcanberra \
		devel/libgee \
		converters/libytnef \
		textproc/gspell \
		textproc/enchant2

WANTLIB += c cairo canberra enchant-2 folks goa-1.0 gck-1
WANTLIB += gcr-base-3 gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gobject-2.0 json-glib-1.0
WANTLIB += gtk-3 intl javascriptcoregtk-4.0 m pango-1.0
WANTLIB += pangocairo-1.0 secret-1 soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2 gspell-1 handy-0.0 ytnef

.include <bsd.port.mk>
