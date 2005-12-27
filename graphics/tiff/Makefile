# $OpenBSD: Makefile,v 1.39 2005/12/27 16:42:43 steven Exp $

COMMENT=	"tools and library routines for working with TIFF images"

DISTNAME=	tiff-3.7.3
SHARED_LIBS=		tiff	37.3	\
			tiffxx	37.3
MODGNU_SHARED_LIBS=	tiff	'-no-undefined'	\
			tiffxx	'-no-undefined'
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/ \
		ftp://ftp.remotesensing.org/pub/libtiff/old/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	jpeg.62::graphics/jpeg
WANTLIB=	c m z
FAKE=		lib

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${DEPBASE}/include" \
		--with-jpeg-lib-dir="${DEPBASE}/lib" \
		--without-x
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
