# $OpenBSD: Makefile,v 1.52 2009/07/22 13:15:00 jasper Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-3.8.2
PKGNAME=	${DISTNAME}p5
SHARED_LIBS=	tiff	38.2 \
		tiffxx	39.2
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/ \
		ftp://ftp.remotesensing.org/pub/libtiff/old/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg
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
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
