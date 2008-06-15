# $OpenBSD: Makefile,v 1.2 2008/06/15 07:01:36 eric Exp $

COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.0.0
CATEGORIES=	geo
SHARED_LIBS=	geos	5.0 \
		geos_c	2.0

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://trac.osgeo.org/geos/
MASTER_SITES=		http://geos.refractions.net/downloads/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	m stdc++
BUILD_DEPENDS=	:doxygen-*:devel/doxygen

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
