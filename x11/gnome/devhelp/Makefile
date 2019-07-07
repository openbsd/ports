# $OpenBSD: Makefile,v 1.121 2019/07/07 11:20:51 ajacoutot Exp $

# build time requirement for WebKit2-4.0 introspection
USE_WXNEEDED=		Yes

COMMENT=		API documentation browser for GNOME

GNOME_PROJECT=		devhelp
GNOME_VERSION=		3.32.0

SHARED_LIBS +=  devhelp-3            1.0      # 4.0

CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += amtk-5 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl javascriptcoregtk-4.0
WANTLIB += m pango-1.0 pangocairo-1.0 soup-2.4 webkit2gtk-4.0

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

LIB_DEPENDS=		www/webkitgtk4 \
			x11/gnome/amtk

# for convenience
RUN_DEPENDS +=		x11/gnome/devel-docs

.include <bsd.port.mk>
