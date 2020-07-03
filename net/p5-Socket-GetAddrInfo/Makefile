# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:38 sthen Exp $

COMMENT	= 	RFC 2553 getaddrinfo and getnameinfo functions

MODULES =	cpan
DISTNAME =	Socket-GetAddrInfo-0.22
REVISION =	2
CATEGORIES =	net

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CONFIGURE_STYLE	=	modbuild
MAKE_ENV+=		TEST_POD=1

BUILD_DEPENDS =		devel/p5-ExtUtils-CChecker>=0.06

.include <bsd.port.mk>
