# OpenBSD makefile for:	pine
# http://www.washington.edu/pine/
# Version required:     4.02
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.7 1998/09/13 18:23:27 marc Exp $
#

DISTNAME=       	pine4.03
PKGNAME=        	pine-4.03
CATEGORIES=     	mail news

MAINTAINER=		marc@OpenBSD.ORG

MASTER_SITES=		ftp://ftp.cac.washington.edu/pine/

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

.include <bsd.port.mk>
