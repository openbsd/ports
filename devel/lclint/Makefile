# $OpenBSD: Makefile,v 1.1.1.1 1999/06/07 23:37:56 espie Exp $

DISTNAME=	lclint-2.4b
CATEGORIES=	devel

DIST_SUBDIR=lclint
EXTRACT_ONLY=${DISTNAME}.src${EXTRACT_SUFX} 
GUIDE=guide${EXTRACT_SUFX}
DISTFILES=${EXTRACT_ONLY} ${GUIDE}

MAINTAINER=	espie@cvs.openbsd.org
AUTHOR=		evs@sds.lcs.mit.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu

DOCDIR=${PREFIX}/share/doc/${DISTNAME}

#DISTFILES ftp://ftp.sds.lcs.mit.edu/pub/lclint/guide.tar.gz
MASTER_SITES=	ftp://ftp.sds.lcs.mit.edu/pub/lclint/

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=bison:${PORTDIRS}/devel/bison


GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-patch:
	cd ${WRKSRC}/src && ${MAKE_PROGRAM} up

post-install:
	${MKDIR} ${DOCDIR}
	cd ${DOCDIR} && ${TAR} zxf ${_DISTDIR}/${GUIDE}

test: ${INSTALL_COOKIE}
	cd ${WRKSRC} && ${MAKE_PROGRAM} test
	

.include <bsd.port.mk>
