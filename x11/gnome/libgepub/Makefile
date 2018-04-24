# $OpenBSD: Makefile,v 1.19 2018/04/24 18:20:12 jasper Exp $

# build time requirement for WebKit2-4.0 introspection
USE_WXNEEDED=		Yes

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.6.0
REVISION =		0

CATEGORIES=		graphics

SHARED_LIBS += gepub-0.6                 0.0 # 0.0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += soup-2.4 webkit2gtk-4.0 xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		www/webkitgtk4

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
