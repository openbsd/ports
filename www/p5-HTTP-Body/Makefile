# $OpenBSD: Makefile,v 1.16 2013/03/11 11:44:46 espie Exp $

COMMENT=	HTTP Body Parser

DISTNAME=	HTTP-Body-1.12
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
