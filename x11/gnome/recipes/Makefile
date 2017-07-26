# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:32 sthen Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		1.6.2
REVISION =		0

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

COMPILER =		clang
COMPILER_LANGS =	c

MODPY_RUNDEP =		No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

WANTLIB += c cairo canberra gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnome-autoar-0 gobject-2.0 gspell-1 gtk-3 intl pango-1.0
WANTLIB += pangocairo-1.0 soup-2.4 m
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS =		audio/libcanberra \
			devel/libsoup \
			textproc/gspell \
			x11/gnome/autoar
RUN_DEPENDS =		archivers/gtar

MODGNOME_TOOLS =	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info vala \
			yelp

MODPY_ADJ_FILES =	meson_post_install.py \
			src/list_to_c.py

.include <bsd.port.mk>
