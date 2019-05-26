# $OpenBSD: Makefile,v 1.49 2019/05/26 08:40:13 ajacoutot Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		3.32.1
REVISION=		0

CATEGORIES=		math

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtksourceview-4
WANTLIB += intl mpc mpfr pango-1.0 pangocairo-1.0 soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS+=		devel/libmpc \
			devel/libsoup \
			devel/mpfr \
			x11/gtksourceview4

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
