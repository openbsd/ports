# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:28 sthen Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTTP-Async-0.09
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
