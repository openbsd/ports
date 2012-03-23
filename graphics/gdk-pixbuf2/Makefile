# $OpenBSD: Makefile,v 1.16 2012/03/23 14:46:21 ajacoutot Exp $

COMMENT=	graphic library for gtk+2

GNOME_PROJECT=	gdk-pixbuf
GNOME_VERSION=	2.26.0

CATEGORIES=	graphics

SHARED_LIBS +=  gdk_pixbuf-2.0       2600.0   # 2600.0
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  2600.0   # 2600.0

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += jasper jpeg m pcre png pthread tiff xcb z ffi

LIB_DEPENDS=	devel/glib2>=2.26.0 \
		graphics/jasper \
		graphics/png \
		graphics/tiff

MODULES=	devel/gettext \
		x11/gnome

USE_GROFF =	Yes

MODGNOME_TOOLS=	goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-Bsymbolic \
		--with-libjasper \
		--with-x11

.include <bsd.port.mk>
