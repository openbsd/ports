# $OpenBSD: Makefile,v 1.11 2011/08/27 08:19:09 ajacoutot Exp $

COMMENT=	graphic library for GTK+2

V=		2.24.0
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

WANTLIB += X11 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += jasper jpeg m pcre png pthread tiff xcb z

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
