# $OpenBSD: Makefile,v 1.34 2013/06/09 15:26:50 ajacoutot Exp $

COMMENT=		graphic library for gtk+2

GNOME_PROJECT=		gdk-pixbuf
GNOME_VERSION=		2.28.2
REVISION=		1

CATEGORIES=		graphics

SHARED_LIBS +=  gdk_pixbuf-2.0       2800.0   # 2800.0
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  2800.0   # 2800.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += jasper jpeg m pcre png pthread tiff xcb z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			graphics/jasper \
			graphics/png \
			graphics/tiff

# configure: detect and set GDK_PIXBUF_USE_GIO_MIME
BUILD_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=		misc/shared-mime-info

MODGNOME_TOOLS=		gi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libjasper \
			--with-x11

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
