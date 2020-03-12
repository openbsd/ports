# $OpenBSD: Makefile,v 1.23 2020/03/12 19:50:06 jasper Exp $

COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		3.34.0

# BSD3/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 pango-1.0 unistring

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		converters/libunistring \
			x11/gtk+3
BUILD_DEPENDS =		x11/gnome/gjs
RUN_DEPENDS =		x11/gnome/gjs

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# Requires unported 'dogtail'
NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

.include <bsd.port.mk>
