# $OpenBSD: Makefile,v 1.4 1999/09/17 10:47:19 turan Exp $

BROKEN=		"sources changed.  checksums differ."

DISTNAME=	lclint-2.4b
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.sds.lcs.mit.edu/pub/lclint/

DIST_SUBDIR=	lclint
EXTRACT_ONLY=	${DISTNAME}.src.tar.gz
GUIDE=		guide.tar.gz
DISTFILES=	${EXTRACT_ONLY} ${GUIDE}

MAINTAINER=	espie@cvs.openbsd.org
AUTHOR=		evs@sds.lcs.mit.edu # David Evans
BUGS=		lclint-bug@sds.lcs.mit.edu

# Has to use bison because lclint uses pure parsers
BUILD_DEPENDS=	bison:${PORTSDIR}/devel/bison

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

DOCDIR=	${PREFIX}/share/doc/${DISTNAME}

post-patch:
	@cd ${WRKSRC}/src && ${MAKE_PROGRAM} up

post-install:
	@${MKDIR} ${DOCDIR}
	@cd ${DOCDIR} && ${TAR} -zxf ${_DISTDIR}/${GUIDE}

test: ${INSTALL_COOKIE}
	@cd ${WRKSRC} && ${MAKE_PROGRAM} test
	
.include <bsd.port.mk>
