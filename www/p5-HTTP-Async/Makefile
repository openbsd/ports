# $OpenBSD: Makefile,v 1.8 2015/11/05 19:09:01 jca Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
DISTNAME=	HTTP-Async-0.09
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
