# Makefile for:		outguess
# Version required:	0.13b
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/04/30 10:21:52 kevlo Exp $

DISTNAME=	outguess-0.13b

CATEGORIES=	security
NEED_VERSION=	1.191

MASTER_SITES=	http://www.physnet.uni-hamburg.de/provos/ \
		http://munitions.vipul.net/software/steganography/

MAINTAINER=	dugsong@monkey.org

GNU_CONFIGURE=	Yes
FAKE=		Yes

WRKDIST=	${WRKDIR}/outguess

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/outguess ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/outguess.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
