# $OpenBSD: Makefile,v 1.65 2012/06/27 14:27:02 jasper Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.2
SHARED_LIBS=	tiff	39.1	# 5.6
SHARED_LIBS+=	tiffxx	40.1	# 5.6
CATEGORIES=	graphics

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	graphics/jpeg
WANTLIB=	c m stdc++ z jpeg

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-jbig \
		--disable-lzma \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
