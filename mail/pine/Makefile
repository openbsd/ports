# $OpenBSD: Makefile,v 1.10 1999/04/08 17:36:48 marc Exp $
#

DISTNAME=       	pine4.10
PKGNAME=        	pine-4.10
CATEGORIES=     	mail news

MAINTAINER=		marc@OpenBSD.ORG

MASTER_SITES=		ftp://ftp.cac.washington.edu/pine/ \
			ftp://ftp.sunet.se/pub/unix/mail/pine/

do-install:
	@${INSTALL_PROGRAM} \
		${WRKSRC}/bin/pico \
		${WRKSRC}/bin/pilot \
		${WRKSRC}/bin/pine \
			${PREFIX}/bin
	@${INSTALL_SCRIPT} \
		${FILESDIR}/pgpencrypt \
		${FILESDIR}/pgpdecode \
		${FILESDIR}/pgpsign \
			${PREFIX}/bin
	@${INSTALL_MAN} \
		${WRKSRC}/doc/pico.1 \
		${WRKSRC}/doc/pilot.1 \
		${WRKSRC}/doc/pine.1 \
			${PREFIX}/man/man1
	@${MKDIR} ${PREFIX}/share/doc/pine
	@${INSTALL_DATA} \
		${WRKSRC}/doc/tech-notes.txt \
		${FILESDIR}/dot.pinerc.pgp.sample \
			${PREFIX}/share/doc/pine

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
