# Ports makefile for:	analog
# Version required:	3.0
# Date created:		11 Aug 1998
# Whom:			Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:49 form Exp $
#

DISTNAME=	analog3.0
PKGNAME=	analog-3.0
CATEGORIES=	www
MASTER_SITES=	http://www.statslab.cam.ac.uk/~sret1/analog/ \
		http://www.lightside.net/analog/ \
		http://www.gamesdomain.com/analog/ \
		http://www.monash.edu.au/mirror/analog/ \
		http://www.gamesdomain.co.uk/analog/ \
		ftp://download.netvision.net.il/pub/mirrors/analog/ \
		ftp://mabuse.phil.uni-passau.de/pub/mirrors/analog/

MAINTAINER=	form@OpenBSD.ORG

ETCDIR=		/etc
ANALOGDIR=	${PREFIX}/lib/analog
DOCDIR=		${PREFIX}/share/doc/analog
HTTPDIR=	/var/www

CFLAGS+=	-DANALOGDIR=\\\"${ANALOGDIR}/\\\" \
		-DHTTPDIR=\\\"${HTTPDIR}/\\\" -DETCDIR=\\\"${ETCDIR}/\\\" \
		-DANALOG=\\\"${PREFIX}/bin/analog\\\"

do-install:
	@${MKDIR} ${DOCDIR}
	@${MKDIR} ${ANALOGDIR}/lang
	@${MKDIR} ${HTTPDIR}/htdocs/images
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/images/* ${HTTPDIR}/htdocs/images
	${INSTALL_DATA} ${WRKSRC}/lang/* ${ANALOGDIR}/lang
	${INSTALL_PROGRAM} ${WRKSRC}/analog ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/analog.cfg ${ANALOGDIR}
.if !exists(${ETCDIR}/analog.cfg)
	${INSTALL_DATA} ${WRKSRC}/analog.cfg ${ETCDIR}
.endif
	${INSTALL_DATA} ${WRKSRC}/domains.tab ${ANALOGDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/anlgform.cgi ${ANALOGDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/anlgform.cgi ${HTTPDIR}/cgi-bin

.include <bsd.port.mk>
