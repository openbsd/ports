# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:03 sthen Exp $

COMMENT =	parameterizable packages
DISTNAME =	Package-Variant-1.002002
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Import-Into>=1 \
		devel/p5-Module-Runtime>=0.013 \
		devel/p5-strictures>=1

# p5-Moo to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Moo

.include <bsd.port.mk>
