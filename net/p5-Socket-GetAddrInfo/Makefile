# $OpenBSD: Makefile,v 1.2 2011/06/01 17:05:01 jasper Exp $

SHARED_ONLY =	Yes

COMMENT	= 	RFC 2553 getaddrinfo and getnameinfo functions

MODULES =	cpan
DISTNAME =	Socket-GetAddrInfo-0.21
CATEGORIES =	net

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE	=	modbuild
MAKE_ENV+=		TEST_POD=1

BUILD_DEPENDS =		devel/p5-ExtUtils-CChecker>=0.06

.include <bsd.port.mk>
