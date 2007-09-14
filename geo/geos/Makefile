# $OpenBSD: Makefile,v 1.1.1.1 2007/09/14 22:47:06 eric Exp $

COMMENT=	2d geometry and topology engine
DISTNAME=	geos-2.2.3
CATEGORIES=	geo
SHARED_LIBS=	geos	4.2 \
		geos_c	1.2

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://geos.refractions.net/
MASTER_SITES=		http://geos.refractions.net/

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

do-regress:
	$(WRKSRC)/source/test/XMLTester $(WRKSRC)/source/test/test.xml
	$(WRKSRC)/source/bigtest/TestSweepLineSpeed

.include <bsd.port.mk>
