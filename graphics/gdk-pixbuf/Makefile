# $OpenBSD: Makefile,v 1.6 2001/09/13 20:35:34 todd Exp $

COMMENT=	"replacement library for Imlib"

DISTNAME=	gdk-pixbuf-0.10.1
CATEGORIES=	graphics
NEED_VERSION=	1.435
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= unstable/sources/gdk-pixbuf

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

LIB_DEPENDS=	png.2::graphics/png \
		tiff.35.::graphics/tiff \
		gtk.1.2::x11/gtk+

FLAVORS=	gnome
FLAVOR?=	

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED} --enable-static --disable-modules
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnome.36::x11/gnome/libs
.endif 

FLAVORS= gnome
FLAVOR?=

.if ${FLAVOR:L} == "gnome"
CONFIGURE_ARGS+= --with-gnome
.endif

pre-patch:
	@find ${WRKSRC} -name "Makefile.in" | xargs perl -pi -e \
		's|\$$\(datadir\)/gnome/|\$$\(datadir\)/|g ; \
		 s|\$$\(datadir\)/aclocal|\$$\(prefix\)/share/aclocal|g'

.include <bsd.port.mk>
