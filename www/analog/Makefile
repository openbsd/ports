# $OpenBSD: Makefile,v 1.4 1999/02/24 06:07:26 fgsch Exp $
#

DISTNAME=	analog3.11
PKGNAME=	analog-3.11
CATEGORIES=	www
MASTER_SITES=	http://www.statslab.cam.ac.uk/~sret1/analog/ \
		http://www.magma.ca/~brendanr/analog/ \
		http://brendanr.simplenet.com/analog/ \
		http://analog.gsp.com/ \
		http://www.reverse.net/analog/ \
		http://www.rge.com/pub/infosystems/statistics/analog/ \
		http://blip.cetlink.net/analog/ \
		http://analog.technomancer.com/ \
		http://analog.wizard.net/ \
		ftp://ftp.netcasting.net/pub/packages/analog/

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
