# $OpenBSD: Makefile,v 1.4 2012/01/12 03:17:09 bentley Exp $

COMMENT =		string internment library

NETSURF_PROJECT =	libwapcaplet
NETSURF_VERSION =	0.1.0

WRKDIST =		${WRKDIR}/${DISTNAME}

CATEGORIES=		devel
SHARED_LIBS =		wapcaplet 1.0 #0.1.0

NO_REGRESS =	Yes #failing test on gcc3 archs
REGRESS_DEPENDS +=	devel/check

.include <bsd.port.mk>
