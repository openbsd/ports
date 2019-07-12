# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:57 sthen Exp $

COMMENT= 	test framework for HTTP::Server::Simple

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-HTTP-Server-Simple-0.11
CATEGORIES=	www devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
