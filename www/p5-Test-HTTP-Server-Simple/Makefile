# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:05 sthen Exp $

COMMENT= 	test framework for HTTP::Server::Simple

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-HTTP-Server-Simple-0.11
CATEGORIES=	www devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
