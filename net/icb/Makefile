# $OpenBSD: Makefile,v 1.7 1998/10/20 08:39:47 form Exp $
# NetBSD: Makefile,v 1.6 1998/04/15 11:15:34 frueauf Exp
#

DISTNAME=		icb-5.0.9
CATEGORIES=		net

MASTER_SITES=		ftp://ftp.swcp.com/pub/icb/clients/unix/  \
			ftp://ftp.swcp.com/pub/icb/clients/  \
			ftp://ftp.empire.net/pub/icb/clients/  \
			ftp://ftp.cs.unm.edu/pub/armijo/icb.src/clients/

EXTRACT_SUFX=		.tar.Z

MAINTAINER=		form@OpenBSD.ORG

do-configure:
	@cd ${WRKSRC}; \
	${SED} -e s,@PREFIX@,${PREFIX},g ${FILESDIR}/config >${WRKSRC}/config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icb/icb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icbserverdb ${PREFIX}/lib
	${INSTALL} -d ${PREFIX}/lib/icb
	${INSTALL_DATA} ${WRKSRC}/sample.icbrc \
			${WRKSRC}/contrib/bartender \
			${WRKSRC}/contrib/confuse \
			${WRKSRC}/contrib/echofile \
			${PREFIX}/lib/icb

.include <bsd.port.mk>
