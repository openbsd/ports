# $OpenBSD: Makefile,v 1.53 2010/06/30 17:10:07 naddy Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-3.9.4
SHARED_LIBS=	tiff	38.3	# 39.4
SHARED_LIBS+=	tiffxx	39.3	# 39.4
CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	jpeg.>=64::graphics/jpeg
WANTLIB=	c m stdc++ z

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-jbig \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	simple
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
