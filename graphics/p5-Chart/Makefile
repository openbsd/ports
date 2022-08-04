COMMENT =	Charting library for Perl

DISTNAME =	Chart-v2.403.7
PKGNAME =	p5-${DISTNAME:S/v//}
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	graphics/p5-GD
BUILD_DEPENDS = ${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Test-Warn

.include <bsd.port.mk>
