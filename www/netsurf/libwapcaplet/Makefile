# $OpenBSD: Makefile,v 1.5 2012/04/30 07:11:58 bentley Exp $

COMMENT =		string internment library

NETSURF_PROJECT =	libwapcaplet
NETSURF_VERSION =	0.1.1

CATEGORIES=		devel
SHARED_LIBS =		wapcaplet 1.0 #0.1.1

NO_REGRESS =	Yes #failing test on gcc3 archs
REGRESS_DEPENDS +=	devel/check

.include <bsd.port.mk>
