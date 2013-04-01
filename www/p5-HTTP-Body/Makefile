# $OpenBSD: Makefile,v 1.17 2013/04/01 16:04:33 sthen Exp $

COMMENT=	HTTP Body Parser

DISTNAME=	HTTP-Body-1.17
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
