# Makefile for:		nsping
# Version required:	0.8
# Date created:		12 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/05 18:09:08 dugsong Exp $

PKGNAME=	nsping-0.8

CATEGORIES=	net

DISTNAME=	nsping

MASTER_SITES=	http://www.enteract.com/~tqbf/

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/${PKGNAME}

NO_CONFIGURE=	yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
