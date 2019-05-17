# $OpenBSD: Makefile,v 1.74 2019/05/17 16:45:27 sthen Exp $

COMMENT=		graphic library for gtk+2

GNOME_PROJECT=		gdk-pixbuf
GNOME_VERSION=		2.38.1
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS +=  gdk_pixbuf-2.0       3200.1   # 0.3800.1
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  3200.0   # 0.3800.1

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl jasper
WANTLIB += jpeg m png pthread tiff z

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			graphics/jasper \
			graphics/png \
			graphics/tiff

# configure: detect and set GDK_PIXBUF_USE_GIO_MIME
# (g_content_type_from_mime_type requires shared-mime-info)
BUILD_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=		misc/shared-mime-info

MODGNOME_TOOLS=		docbook gobject-introspection shared-mime-info

CONFIGURE_ARGS=		-Dinstalled_tests=false \
			-Djasper=true

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

.include <bsd.port.mk>
