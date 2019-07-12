# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:07 sthen Exp $

COMMENT =	tool for inspecting subroutines

DISTNAME =	Sub-Info-0.002

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Importer>=0.024

# Test::Simple 1.001014 is included in base Perl 5.24.3.  The test in Sub::Info
# needs Test2::Tools::Tiny which is included in newer Test::Simple.  Updating
# modules in base Perl or having newer ports as additional module version has
# its drawbacks.  Just leave p5-Sub-Info without working test for now.
#TEST_DEPENDS =		cpan/p5-Test-Simple>=1.302072
NO_TEST =		Yes

PKG_ARCH =		*

.include <bsd.port.mk>
