# $OpenBSD: Makefile,v 1.78 2016/11/29 20:00:35 naddy Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.7
SHARED_LIBS=	tiff	40.0	# 7.5
SHARED_LIBS+=	tiffxx	40.1	# 7.5
CATEGORIES=	graphics

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.simplesystems.org/libtiff/

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
