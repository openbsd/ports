# $OpenBSD: Makefile,v 1.62 2012/04/09 17:21:05 naddy Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-3.9.6
SHARED_LIBS=	tiff	38.3	# 39.6
SHARED_LIBS+=	tiffxx	39.3	# 39.6
CATEGORIES=	graphics

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	graphics/jpeg
WANTLIB=	c m stdc++ z jpeg>=64

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-jbig \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
