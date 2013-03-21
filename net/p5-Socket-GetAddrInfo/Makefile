# $OpenBSD: Makefile,v 1.5 2013/03/21 21:32:43 sthen Exp $

SHARED_ONLY =	Yes

COMMENT	= 	RFC 2553 getaddrinfo and getnameinfo functions

MODULES =	cpan
DISTNAME =	Socket-GetAddrInfo-0.22
CATEGORIES =	net

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CONFIGURE_STYLE	=	modbuild
MAKE_ENV+=		TEST_POD=1

BUILD_DEPENDS =		devel/p5-ExtUtils-CChecker>=0.06

.include <bsd.port.mk>
