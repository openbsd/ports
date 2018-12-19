# $OpenBSD: Makefile,v 1.2 2018/12/19 12:30:27 bluhm Exp $

COMMENT =	format a header and rows into a table

DISTNAME =	Term-Table-0.013

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Importer>=0.024

# Test::Simple 1.001014 is included in base Perl 5.24.3.  The tests in
# Term::Table need Test2::Tools::Tiny which is included in newer Test::Simple.
# Updating modules in base Perl or having newer ports as additional module
# version has its drawbacks.  Just leave p5-Term-Table without working test
# for now.
#TEST_DEPENDS =		cpan/p5-Test-Simple>=1.302097
NO_TEST =		Yes

PKG_ARCH =		*

.include <bsd.port.mk>
