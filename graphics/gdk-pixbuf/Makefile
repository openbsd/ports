# $OpenBSD: Makefile,v 1.45 2009/08/10 06:31:44 kili Exp $

COMMENT=	GdkPixbuf graphics library

DISTNAME=	gdk-pixbuf-0.22.0
PKGNAME=	${DISTNAME}p9
SHARED_LIBS=	gdk_pixbuf		2.0	\
		gdk_pixbuf_xlib		2.0
CATEGORIES=	graphics

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gdk-pixbuf/0.22/}

WANTLIB=	X11 Xau Xdmcp Xext Xi glib gmodule iconv intl m pthread-stubs \
		xcb z
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		tiff.>=35.::graphics/tiff \
		gtk.>=1.2,gdk.>=1.2::x11/gtk+

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-modules \
		 --disable-mmx \
		 --disable-gtk-doc \
		 --with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_GNOME_CONFIG=no

.include <bsd.port.mk>
