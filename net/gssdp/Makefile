# $OpenBSD: Makefile,v 1.41 2019/01/25 19:45:40 jasper Exp $

COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		1.0.3

SHARED_LIBS +=  gssdp-1.0            2.1      # 3.0
CATEGORIES=		net devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv idn2 intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png16 psl
WANTLIB += pthread soup-2.4 sqlite3 unistring xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
