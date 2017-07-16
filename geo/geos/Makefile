# $OpenBSD: Makefile,v 1.21 2017/07/16 19:18:50 espie Exp $

BROKEN-hppa =	undefined reference to `std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.6.1
CATEGORIES=	geo

SHARED_LIBS=	geos	10.0 \
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

.include <bsd.port.mk>
