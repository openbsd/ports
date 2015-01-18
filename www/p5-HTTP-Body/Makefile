# $OpenBSD: Makefile,v 1.18 2015/01/18 20:45:21 benoit Exp $

COMMENT=	HTTP Body Parser

DISTNAME =	HTTP-Body-1.19
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
