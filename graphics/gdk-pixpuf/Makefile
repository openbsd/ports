# $OpenBSD: Makefile,v 1.1.1.1 2000/12/26 12:31:58 reinhard Exp $

DISTNAME=	gdk-pixbuf-0.9.0
CATEGORIES=	graphics
NEED_VERSION=	1.346
MASTER_SITES=	ftp://ftp.gnome.org/pub/GNOME/unstable/sources/gdk-pixbuf/

HOMEPAGE=	http://developer.gnome.org/arch/imaging/gdkpixbuf.html

LIB_DEPENDS=	png.1::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35.::graphics/tiff \
		gtk.1.2::x11/gtk+

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static 
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-patch:
	@find ${WRKSRC} -name "Makefile.in" | xargs perl -pi -e \
		's|\$$\(datadir\)/gnome/|\$$\(datadir\)/|g ; \
		 s|\$$\(datadir\)/aclocal|\$$\(prefix\)/share/aclocal|g'

.include <bsd.port.mk>
