# $OpenBSD: Makefile,v 1.12 2002/04/15 23:33:31 brad Exp $

COMMENT=	"image viewer similar to ACDSee for Windows"

DISTNAME=	gtksee-0.5.0
CATEGORIES=	graphics
NEED_VERSION=	1.497

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	ftp://rt.fm/pub/gtksee/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png
RUN_DEPENDS=	::archivers/bzip \
		::archivers/bzip2

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-im-libs="${PREFIX}/lib" \
		--with-im-incs="${PREFIX}/include"

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

.include <bsd.port.mk>
