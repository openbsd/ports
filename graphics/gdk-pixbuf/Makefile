# $OpenBSD: Makefile,v 1.21 2002/08/25 22:30:40 brad Exp $

COMMENT=	"GdkPixbuf graphics library"
COMMENT-gnome=	"GdkPixbuf graphics library (GNOME Canvas)"

VERSION=	0.17.0
DISTNAME=	gdk-pixbuf-${VERSION}
PKGNAME-gnome=	gdk-pixbuf-gnome-${VERSION}
CATEGORIES=	graphics

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=unstable/sources/gdk-pixbuf/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --disable-modules \
		 --disable-mmx \
		 --disable-gtk-doc \
		 --with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PSEUDO_FLAVORS=	no_gnome
FLAVOR?=	

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_gnome}
MULTI_PACKAGES+= -gnome
.endif
SUBPACKAGE?=

LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		tiff.35.::graphics/tiff \
		gtk.1.2,gdk.1.2::x11/gtk+

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
LIB_DEPENDS+=	gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=	gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
. endif
.endif

.if ${MULTI_PACKAGES:M-gnome}
CONFIGURE_ARGS+= --with-gnome
.endif

.include <bsd.port.mk>
