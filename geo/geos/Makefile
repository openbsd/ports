# $OpenBSD: Makefile,v 1.11 2013/03/09 20:18:47 landry Exp $

BROKEN-hppa =	undefined reference to `std::auto_ptr<geos::geom::Envelope>::~auto_ptr()'
COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.3.8
CATEGORIES=	geo
SHARED_LIBS=	geos	7.1 \
		geos_c	4.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://trac.osgeo.org/geos/
MASTER_SITES=		http://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m stdc++
BUILD_DEPENDS=	devel/doxygen>=1.7.2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-pic

post-build:
	cd $(WRKSRC)/doc && ${MAKE_PROGRAM} doxygen-html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/geos/html
	${INSTALL_DATA} $(WRKSRC)/doc/doxygen_docs/html/* \
			${PREFIX}/share/doc/geos/html

.include <bsd.port.mk>
