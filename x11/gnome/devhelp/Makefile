# $OpenBSD: Makefile,v 1.123 2020/04/30 23:10:02 kn Exp $

# build time requirement for WebKit2-4.0 introspection
USE_WXNEEDED=		Yes

COMMENT=		API documentation browser for GNOME

GNOME_PROJECT=		devhelp
GNOME_VERSION=		3.34.0
REVISION=		0

SHARED_LIBS +=  devhelp-3            1.0      # 4.0

CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += amtk-5 c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += pango-1.0 webkit2gtk-4.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		www/webkitgtk4 \
			x11/gnome/amtk

# for convenience
RUN_DEPENDS +=		x11/gnome/devel-docs

.include <bsd.port.mk>
