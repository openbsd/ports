# Makefile for:		outguess
# Version required:	0.13b
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/04/09 17:38:06 espie Exp $

DISTNAME=	outguess-0.13b

CATEGORIES=	security
NEED_VERSION=	1.191
FAKE=No

MASTER_SITES=	http://www.physnet.uni-hamburg.de/provos/ \
		http://munitions.vipul.net/software/steganography/

MAINTAINER=	dugsong@monkey.org

GNU_CONFIGURE=	yes

NO_PATCH=	yes

WRKDIST=	${WRKDIR}/outguess

post-extract:
		cp ${FILESDIR}/outguess.1 ${WRKSRC}

.include <bsd.port.mk>
