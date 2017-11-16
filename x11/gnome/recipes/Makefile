# $OpenBSD: Makefile,v 1.27 2017/11/16 23:20:40 naddy Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		2.0.2

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

COMPILER =		base-clang ports-clang
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

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=790064
# Generate this file upfront as it may not be created in time
# due to ninja's randomization.
pre-build:
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v src/no-ingredients.inc

.include <bsd.port.mk>
