# Makefile for:		outguess
# Version required:	0.13b
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.7 2000/10/22 15:43:25 espie Exp $

DISTNAME=	outguess-0.13b

CATEGORIES=	security
NEED_VERSION=	1.305

MASTER_SITES=	http://www.physnet.uni-hamburg.de/provos/ \
		http://munitions.vipul.net/software/steganography/

MAINTAINER=	Dug Song <dugsong@monkey.org>

CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/outguess

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/outguess ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/outguess.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
