# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:55 marc Exp $
#

DISTNAME=	gnushogi-1.2p03
PKGNAME=	gnushogi-1.2.3
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_GNU}

DOCFILES= BOOKFILES CHANGES CONTRIB COPYING GENERAL INSTALL PORTING \
	README-FIRST listserv.ref shogi.rules tutorial1.gam tutorial2.gam

post-configure:
	echo "DISTDIR=${WRKDIR}" >> ${WRKSRC}/src/${MAKEFILE}
	echo "prefix=${PREFIX}" >> ${WRKSRC}/src/${MAKEFILE}

do-build:
	(cd ${WRKSRC}/src; \
	make gnushogir; \
	make gnushogi.bbk; \
	make gnushogi; \
	make gnushogix )

do-install:
	@${MKDIR} ${PREFIX}/share/gnushogi
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogi ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogir ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogix ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKSRC}/src/gnushogi.bbk ${PREFIX}/share/gnushogi
	${INSTALL_MAN} ${WRKSRC}/doc/gnushogi.1 ${PREFIX}/man/man6/gnushogi.6
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/gnushogi
.for doc in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${doc} ${PREFIX}/share/doc/gnushogi
.endfor
.endif

.include <bsd.port.mk>
