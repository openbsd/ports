# Makefile for:		nsping
# Version required:	0.8
# Date created:		12 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:33 espie Exp $

PKGNAME=	nsping-0.8

CATEGORIES=	net

DISTNAME=	nsping

MASTER_SITES=	http://www.enteract.com/~tqbf/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

WRKDIST=		${WRKDIR}/${PKGNAME}

NO_CONFIGURE=	yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
