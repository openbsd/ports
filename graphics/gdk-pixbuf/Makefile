# $OpenBSD: Makefile,v 1.37 2006/01/22 10:38:55 steven Exp $

COMMENT=	"GdkPixbuf graphics library"
COMMENT-gnome=	"GdkPixbuf graphics library (GNOME Canvas)"

VERSION=	0.22.0
DISTNAME=	gdk-pixbuf-${VERSION}
PKGNAME=	${DISTNAME}p4
PKGNAME-gnome=	gdk-pixbuf-gnome-${VERSION}p0
SHARED_LIBS=	gdk_pixbuf		2.0	\
		gdk_pixbuf_xlib		2.0	\
		gnomecanvaspixbuf	1.0

CATEGORIES=	graphics

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		iconv intl glib m X11 gmodule Xi Xext z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gdk-pixbuf/0.22/}

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.52
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-modules \
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

.if ${FLAVOR:L:Mno_gnome}
CONFIGURE_ENV+=	ac_cv_path_GNOME_CONFIG=no
.endif

LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		tiff.35.::graphics/tiff \
		gtk.1.2,gdk.1.2::x11/gtk+

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
LIB_DEPENDS+=	gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs \
		gdk_pixbuf.2::graphics/gdk-pixbuf
WANTLIB+=	esd ungif ICE audiofile gdk_imlib SM
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=	gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
. endif
.endif

.include <bsd.port.mk>
