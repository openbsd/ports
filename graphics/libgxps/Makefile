# $OpenBSD: Makefile,v 1.5 2015/09/04 08:19:59 ajacoutot Exp $

COMMENT=		GObject library for handling and rendering XPS documents

GNOME_PROJECT=		libgxps
GNOME_VERSION=		0.2.3.2

SHARED_LIBS +=  gxps                 0.1      # 4.0

CATEGORIES=		graphics

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender archive bz2 c cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 jpeg lcms2
WANTLIB += lzma lzo2 m pcre pixman-1 png pthread pthread-stubs tiff xcb
WANTLIB += xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		docbook gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			graphics/cairo \
			graphics/lcms2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
