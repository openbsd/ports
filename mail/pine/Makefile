# OpenBSD makefile for:	pine
# http://www.washington.edu/pine/
# Version required:     4.02
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.6 1998/08/14 20:27:07 marc Exp $
#

DISTNAME=       	pine4.02
PKGNAME=        	pine-4.02A
CATEGORIES=     	mail news

MAINTAINER=		marc@OpenBSD.ORG

MASTER_SITES=		ftp://ftp.cac.washington.edu/pine/
PATCH_SITES=		ftp://ftp.cac.washington.edu/pine/
PATCHFILES=		pine4.02A.patch
PATCH_DIST_STRIP=	-p1

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
