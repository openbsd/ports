# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:02 sthen Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTTP-Async-0.33
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=	devel/p5-Test-Fatal \
		net/p5-Test-TCP \
		www/p5-Test-HTTP-Server-Simple

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
