# $OpenBSD: Makefile,v 1.77 2016/07/01 11:23:44 jasper Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.6
REVISION=	1
SHARED_LIBS=	tiff	39.2	# 7.4
SHARED_LIBS+=	tiffxx	40.1	# 7.4
CATEGORIES=	graphics

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	graphics/jpeg
WANTLIB=	c m stdc++ z jpeg

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-jbig \
		--disable-lzma \
		--with-docdir="${PREFIX}/share/doc/tiff" \
		--with-jpeg-include-dir="${LOCALBASE}/include" \
		--with-jpeg-lib-dir="${LOCALBASE}/lib" \
		--without-x
SEPARATE_BUILD=	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/share/doc/tiff && mv html/* . && rmdir html

.include <bsd.port.mk>
