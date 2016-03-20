# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:35 naddy Exp $

COMMENT=	extension for easily overriding subroutines

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Sub-Override-0.09
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS =	devel/p5-Test-Fatal

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
