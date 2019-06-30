# $OpenBSD: Makefile,v 1.50 2019/06/30 12:00:02 ajacoutot Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		3.32.2

CATEGORIES=		math

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += gtksourceview-4 intl mpc mpfr soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS+=		devel/libmpc \
			devel/libsoup \
			devel/mpfr \
			x11/gtksourceview4

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
