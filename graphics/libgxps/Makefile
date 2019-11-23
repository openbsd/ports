# $OpenBSD: Makefile,v 1.16 2019/11/23 16:55:56 ajacoutot Exp $

COMMENT=		GObject library for handling and rendering XPS documents

GNOME_PROJECT=		libgxps
GNOME_VERSION=		0.3.1

SHARED_LIBS += gxps                      0.1 # 2.2.3

CATEGORIES=		graphics

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += archive c cairo freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += jpeg lcms2 m png tiff

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			graphics/cairo \
			graphics/lcms2

# requires gtk+3
CONFIGURE_ARGS +=	-Denable-test=false

.include <bsd.port.mk>
