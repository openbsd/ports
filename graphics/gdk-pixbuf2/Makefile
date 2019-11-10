# $OpenBSD: Makefile,v 1.82 2019/11/10 21:44:07 ajacoutot Exp $

COMMENT=		graphic library for GTK+

GNOME_PROJECT=		gdk-pixbuf
GNOME_VERSION=		2.40.0
REVISION=		2

CATEGORIES=		graphics

SHARED_LIBS +=  gdk_pixbuf-2.0       3200.2   # 0.4000.0
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  3200.0   # 0.4000.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl jasper
WANTLIB += jpeg m png tiff

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

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
