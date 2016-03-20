# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:57 naddy Exp $

COMMENT	= 	RFC 2553 getaddrinfo and getnameinfo functions

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Socket-GetAddrInfo-0.22
REVISION =	0
CATEGORIES =	net

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CONFIGURE_STYLE	=	modbuild
MAKE_ENV+=		TEST_POD=1

BUILD_DEPENDS =		devel/p5-ExtUtils-CChecker>=0.06

.include <bsd.port.mk>
