# $OpenBSD: Makefile,v 1.9 2011/06/14 14:33:30 ajacoutot Exp $

COMMENT=	graphic library for GTK+2

V=		2.23.4
DISTNAME=	gdk-pixbuf-${V}

EXTRACT_SUFX=	.tar.xz

CATEGORIES=	graphics

SHARED_LIBS +=  gdk_pixbuf-2.0            2200.1 # 2300.3
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0       2200.1 # 2300.3

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp c m pthread pthread-stubs xcb z gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 jasper jpeg pcre
WANTLIB += png tiff

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gdk-pixbuf/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	devel/glib2>=2.26.0 \
		graphics/jasper \
		graphics/png \
		graphics/tiff

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-Bsymbolic \
		--enable-introspection \
		--with-libjasper

.include <bsd.port.mk>
