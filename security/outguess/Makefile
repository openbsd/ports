# Makefile for:		outguess
# Version required:	0.13b
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/11/13 20:24:11 dugsong Exp $

DISTNAME=	outguess-0.13b

CATEGORIES=	security

MASTER_SITES=	http://www.physnet.uni-hamburg.de/provos/ \
		http://munitions.vipul.net/software/steganography/

MAINTAINER=	dugsong@monkey.org

GNU_CONFIGURE=	yes

NO_PATCH=	yes

WRKSRC=		${WRKDIR}/outguess

post-extract:
		cp ${FILESDIR}/outguess.1 ${WRKSRC}

.include <bsd.port.mk>
