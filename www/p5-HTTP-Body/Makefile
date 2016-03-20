# $OpenBSD: Makefile,v 1.20 2016/03/20 19:57:19 naddy Exp $

COMMENT=	HTTP Body Parser

DISTNAME =	HTTP-Body-1.22
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
