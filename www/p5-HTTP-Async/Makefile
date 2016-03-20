# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:19 naddy Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTTP-Async-0.09
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
