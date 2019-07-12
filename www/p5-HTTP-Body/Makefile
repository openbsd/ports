# $OpenBSD: Makefile,v 1.21 2019/07/12 20:50:55 sthen Exp $

COMMENT=	HTTP Body Parser

DISTNAME =	HTTP-Body-1.22
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
