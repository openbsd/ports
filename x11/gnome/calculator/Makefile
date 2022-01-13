# $OpenBSD: Makefile,v 1.60 2022/01/13 08:07:51 ajacoutot Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		41.1
REVISION=		0

CATEGORIES=		math

SHARED_LIBS += gcalc-2                   0.0 # 1
SHARED_LIBS += gci-1                     0.0 # 0

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c gdk-3 gee-0.8 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 gtksourceview-4 handy-1 intl mpc mpfr soup-2.4
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libgee \
			devel/libmpc \
			devel/libsoup \
			devel/mpfr \
			x11/gtksourceview4 \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
