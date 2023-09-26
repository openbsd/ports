COMMENT =	module for graph plotting

VERSION =	1.56
DISTNAME =	GDGraph-${VERSION}
PKGNAME =	p5-GD-Graph-${VERSION}
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

SITES =		${SITE_PERL_CPAN:=GD/}

RUN_DEPENDS =	graphics/p5-GD>=1.18 \
		graphics/p5-GD-TextUtil
BUILD_DEPENDS =	${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Test-Exception \
		sysutils/p5-Capture-Tiny

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

.include <bsd.port.mk>
