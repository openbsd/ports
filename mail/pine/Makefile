# OpenBSD makefile for:	pine
# http://www.washington.edu/pine/
# Version required:     4.02
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.5 1998/08/03 04:11:48 marc Exp $
#

DISTNAME=       pine4.02
PKGNAME=        pine-4.02
CATEGORIES=     mail news
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/

MAINTAINER=	marc@OpenBSD.ORG

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
