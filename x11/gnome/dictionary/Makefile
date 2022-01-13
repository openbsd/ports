# $OpenBSD: Makefile,v 1.34 2022/01/13 08:07:52 ajacoutot Exp $

COMMENT=		GNOME dictionary application

GNOME_PROJECT=		gnome-dictionary
GNOME_VERSION=		40.0
REVISION=		0

SHARED_LIBS +=  gdict-1.0            9.1      # 10.0

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPLER_LANGS=		c

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils docbook gobject-introspection yelp \
			gtk-update-icon-cache

.include <bsd.port.mk>
