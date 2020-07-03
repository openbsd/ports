# $OpenBSD: Makefile,v 1.22 2020/07/03 21:46:02 sthen Exp $

COMMENT=	HTTP Body Parser

DISTNAME =	HTTP-Body-1.22
CATEGORIES=	www
REVISION =	0

# Same as Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
