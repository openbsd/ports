# $OpenBSD: Makefile,v 1.18 2002/05/31 00:03:35 brad Exp $

COMMENT=	"GdkPixbuf graphics library"
COMMENT-gnome=	"GdkPixbuf graphics library (GNOME Canvas)"

VERSION=	0.10.1
DISTNAME=	gdk-pixbuf-${VERSION}
FULLPKGNAME=	${DISTNAME}p1
FULLPKGNAME-gnome= gdk-pixbuf-gnome-${VERSION}p1
CATEGORIES=	graphics
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_GNOME:=unstable/sources/gdk-pixbuf/}

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --disable-modules \
		 --disable-mmx
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	no_gnome
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

pre-patch:
	@find ${WRKSRC} -name "Makefile.in" | xargs perl -pi -e \
		's|\$$\(datadir\)/gnome/|\$$\(datadir\)/|g ; \
		 s|\$$\(datadir\)/aclocal|\$$\(prefix\)/share/aclocal|g'

.include <bsd.port.mk>
