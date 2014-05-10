# $OpenBSD: Makefile,v 1.1.1.1 2014/05/10 17:12:56 afresh1 Exp $

COMMENT =	parameterizable packages
DISTNAME =	Package-Variant-1.002000
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Import-Into>=1 \
		devel/p5-Module-Runtime>=0.013 \
		devel/p5-strictures>=1

# p5-Moo to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Moo

.include <bsd.port.mk>
