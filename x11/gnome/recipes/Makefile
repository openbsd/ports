# $OpenBSD: Makefile,v 1.34 2019/12/27 17:20:34 sthen Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		2.0.2
REVISION =		4

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

COMPILER =		base-clang ports-clang
COMPILER_LANGS =	c

WANTLIB += archive atk-1.0 c cairo cairo-gobject canberra enchant-2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += goa-1.0 gobject-2.0 gspell-1 gtk-3 intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 rest-0.7 soup-2.4 xml2
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS =		audio/libcanberra \
			devel/libsoup \
			textproc/gspell \
			x11/gnome/autoar \
			x11/gnome/online-accounts
RUN_DEPENDS =		archivers/gtar

MODGNOME_TOOLS =	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info vala \
			yelp

.include <bsd.port.mk>
