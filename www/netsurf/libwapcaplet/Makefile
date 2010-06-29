# $OpenBSD: Makefile,v 1.1.1.1 2010/06/29 20:11:13 landry Exp $

COMMENT =		string internment library

NETSURF_PROJECT =	libwapcaplet
NETSURF_VERSION =	0.0.2

CATEGORIES=		devel
SHARED_LIBS =		wapcaplet 0.0 #0.0.2

NO_REGRESS =	Yes #failing test on gcc3 archs
REGRESS_DEPENDS +=	::devel/check

.include <bsd.port.mk>
