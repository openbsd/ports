# $OpenBSD: Makefile,v 1.7 2015/01/21 14:43:33 sthen Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
DISTNAME=	HTTP-Async-0.09
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
