# $OpenBSD: Makefile,v 1.52 2019/11/02 10:01:26 jasper Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		3.34.1

CATEGORIES=		math

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += gtksourceview-4 intl mpc mpfr soup-2.4 xml2 gee-0.8

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS+=		devel/libgee \
			devel/libmpc \
			devel/libsoup \
			devel/mpfr \
			x11/gtksourceview4

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
