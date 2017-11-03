# $OpenBSD: Makefile,v 1.13 2017/11/03 13:08:50 ajacoutot Exp $

# Required at build time for a temporary program created and run by
# g-ir-scanner; programs linked against libgepub need wxneeded, too
# (see the patch for libgepub.pc.in).
USE_WXNEEDED=		Yes

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.5.2

CATEGORIES=		graphics

SHARED_LIBS +=  gepub                     1.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0 gtk-3 javascriptcoregtk-4.0
WANTLIB += soup-2.4 webkit2gtk-4.0 xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		www/webkitgtk4

# XXX needed for g-ir-scanner(1)
MODGNOME_LDFLAGS +=	-L${X11BASE}/lib
MAKE_ENV +=		${_MODGNOME_ldflags}

.include <bsd.port.mk>
