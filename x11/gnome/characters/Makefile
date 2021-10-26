# $OpenBSD: Makefile,v 1.26 2021/10/26 10:37:22 jasper Exp $

COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		41.0

# BSD3/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 pango-1.0 unistring

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		converters/libunistring \
			x11/gtk+3
BUILD_DEPENDS =		x11/gnome/gjs \
			x11/libhandy
RUN_DEPENDS =		x11/gnome/gjs \
			x11/libhandy

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# Requires unported 'dogtail'
NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>
