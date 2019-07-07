# $OpenBSD: Makefile,v 1.22 2019/07/07 11:20:53 ajacoutot Exp $

# build time requirement for WebKit2-4.0 introspection
USE_WXNEEDED=		Yes

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.6.0
REVISION =		2

CATEGORIES=		graphics

SHARED_LIBS += gepub-0.6                 0.0 # 0.0.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += soup-2.4 webkit2gtk-4.0 xml2
WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 intl
WANTLIB += pango-1.0 pangocairo-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		www/webkitgtk4

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
