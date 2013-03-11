# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:47 espie Exp $

COMMENT= 	test framework for HTTP::Server::Simple

MODULES=	cpan

DISTNAME=	Test-HTTP-Server-Simple-0.09
REVISION=	0
CATEGORIES=	www devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
