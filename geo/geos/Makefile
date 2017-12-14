# $OpenBSD: Makefile,v 1.25 2017/12/14 05:57:44 jca Exp $

BROKEN-hppa =	undefined reference to 'std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.6.2
CATEGORIES=	geo

SHARED_LIBS=	geos	11.0 \
		geos_c	4.2

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		https://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m ${COMPILER_LIBCXX}

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-pic

# Strip UTF-8 BOM, base gcc fails with:
# CGAlgorithms.cpp:1: error: stray '\357' in program
post-extract:
	find ${WRKSRC} -type f '(' -name '*.c*' -o -name '*.h' ')' \
	    -exec perl -pi -e 's/^\xef\xbb\xbf//;' {} +

.include <bsd.port.mk>
