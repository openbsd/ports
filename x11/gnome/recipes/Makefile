# $OpenBSD: Makefile,v 1.23 2017/11/02 11:22:38 jasper Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		2.0.0

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

COMPILER =		clang
COMPILER_LANGS =	c

WANTLIB += c cairo canberra gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnome-autoar-0 gobject-2.0 gspell-1 gtk-3 intl pango-1.0
WANTLIB += pangocairo-1.0 soup-2.4 m json-glib-1.0 goa-1.0 rest-0.7
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
