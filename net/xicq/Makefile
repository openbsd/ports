# New ports collection makefile for:	xicq
# Version required:			23 June 1998
# Date created:				30 June 1998
# Whom:					form
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/07/01 03:34:49 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/06/29 18:39:26 scrappy Exp
#

DISTNAME=	xicq-062398-snapshot
PKGNAME=	xicq-062398
CATEGORIES=	net
MASTER_SITES=	http://www.xtrophy.dk/xicq/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	form@vs.itam.nsc.ru

WRKSRC=		${WRKDIR}/xicq-062398-snapshot

USE_GMAKE=	yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/bin/xicq ${PREFIX}/bin
		${MKDIR} ${PREFIX}/share/examples/xicq
.for file in contact config
		${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/xicq
.endfor

.include <bsd.port.mk>
