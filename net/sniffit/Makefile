# New ports collection makefile for:	sniffit
# Version required:	0.3.5
# Date created:		7 May 1998
# Whom:			form
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:47 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/04/04 04:58:25 obrien Exp
#

DISTNAME=	sniffit.0.3.5
PKGNAME=	sniffit-0.3.5
CATEGORIES=	net security
MASTER_SITES=	http://reptile.rug.ac.be/~coder/sniffit/files/ \
		ftp://ftphost.manawatu.gen.nz/pub/unix/net/security/sniffers/sniffit/ \
		ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles

MAINTAINER=	form@OpenBSD.ORG

GNU_CONFIGURE=	yes
ALL_TARGET=
MAN5=		sniffit.5
MAN8=		sniffit.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sniffit ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/sniffit.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/sniffit.8 ${PREFIX}/man/man8
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/sniffit
	${INSTALL_MAN} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/sniffit
.endif

.include <bsd.port.mk>
