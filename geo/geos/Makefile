# $OpenBSD: Makefile,v 1.34 2021/02/21 09:31:48 landry Exp $

BROKEN-hppa =	undefined reference to 'std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
BROKEN-arm =	ld: error: duplicate symbol: typeinfo for geos::noding::BasicSegmentString

COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.9.1
CATEGORIES=	geo

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	geos	16.0 \
		geos_c	4.5

# LGPLv2.1
PERMIT_PACKAGE=	Yes

HOMEPAGE=		https://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m ${COMPILER_LIBCXX}

USE_GMAKE=	Yes

# uses C++11, cf https://trac.osgeo.org/geos/wiki/RFC5
COMPILER =	base-clang ports-gcc
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-pic

.include <bsd.port.mk>
