# $OpenBSD: Makefile,v 1.3 2011/07/18 20:03:50 landry Exp $

COMMENT =		string internment library

NETSURF_PROJECT =	libwapcaplet
NETSURF_VERSION =	0.1.0

CATEGORIES=		devel
SHARED_LIBS =		wapcaplet 1.0 #0.1.0

NO_REGRESS =	Yes #failing test on gcc3 archs
REGRESS_DEPENDS +=	devel/check

.include <bsd.port.mk>
