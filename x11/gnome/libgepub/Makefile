# $OpenBSD: Makefile,v 1.16 2018/01/20 12:33:31 ajacoutot Exp $

# build time requirement for WebKit2-4.0 introspection:
# g-ir-scanner(1) only passes -L/-l LDFLAGS
USE_WXNEEDED=		Yes

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.5.3

CATEGORIES=		graphics

SHARED_LIBS += gepub                     1.0 # 0.0.0

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
