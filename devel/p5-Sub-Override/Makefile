# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:10 sthen Exp $

COMMENT=	extension for easily overriding subroutines

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Sub-Override-0.09
CATEGORIES=	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS =	devel/p5-Test-Fatal

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
