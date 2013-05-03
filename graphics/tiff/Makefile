# $OpenBSD: Makefile,v 1.71 2013/05/03 11:00:39 jasper Exp $

COMMENT=	tools and library routines for working with TIFF images

DISTNAME=	tiff-4.0.3
SHARED_LIBS=	tiff	39.2	# 7.0
SHARED_LIBS+=	tiffxx	40.1	# 7.0
REVISION=	2
CATEGORIES=	graphics

MASTER_SITES=	http://download.osgeo.org/libtiff/

HOMEPAGE=	http://www.remotesensing.org/libtiff/

LIB_DEPENDS=	graphics/jpeg
WANTLIB=	c m stdc++ z jpeg

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
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
