# $OpenBSD: Makefile,v 1.20 2020/05/14 15:29:33 jasper Exp $

COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		3.36.02

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo clutter-1.0 clutter-gtk-1.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gsound gtk-3 intl m pango-1.0 pangocairo-1.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =		audio/gsound \
			graphics/clutter/clutter-gtk

MODGNOME_LDFLAGS +=    -L${X11BASE}/lib

.include <bsd.port.mk>
