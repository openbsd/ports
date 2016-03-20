# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:47 naddy Exp $

COMMENT=        algorithm to find good values for chart axis

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Chart-Math-Axis-1.06
CATEGORIES=     math graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS =	devel/p5-Params-Util
TEST_DEPENDS =	devel/p5-Test-Taint

MAKE_ENV +=	TEST_POD=Yes AUTOMATED_TESTING=Yes

.include <bsd.port.mk>
