# $OpenBSD: Makefile,v 1.8 2014/11/24 10:20:16 benoit Exp $

COMMENT= 	test framework for HTTP::Server::Simple

MODULES=	cpan

DISTNAME =	Test-HTTP-Server-Simple-0.11
CATEGORIES=	www devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
