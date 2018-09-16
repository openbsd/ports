# $OpenBSD: Makefile,v 1.26 2018/09/16 16:46:28 landry Exp $

BROKEN-hppa =	undefined reference to 'std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.7.0
CATEGORIES=	geo

SHARED_LIBS=	geos	12.0 \
		geos_c	4.3

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		https://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m ${COMPILER_LIBCXX}

USE_GMAKE=	Yes

# uses C++11, cf https://trac.osgeo.org/geos/wiki/RFC5
COMPILER =	base-clang ports-gcc
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-pic

# Strip UTF-8 BOM, base gcc fails with:
# CGAlgorithms.cpp:1: error: stray '\357' in program
#post-extract:
#	find ${WRKSRC} -type f '(' -name '*.c*' -o -name '*.h' ')' \
#	    -exec perl -pi -e 's/^\xef\xbb\xbf//;' {} +

.include <bsd.port.mk>
