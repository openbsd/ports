# $OpenBSD: Makefile,v 1.24 2017/11/04 10:11:30 landry Exp $

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

.include <bsd.port.mk>
