# $OpenBSD: Makefile,v 1.5 2016/11/26 01:38:22 afresh1 Exp $

COMMENT =	ClassName type constraint with coercion to load the class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Types-LoadableClass-0.014
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean

BUILD_DEPENDS =	devel/p5-Module-Build-Tiny>=0.007

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Moose \
		devel/p5-Test-Fatal \
		devel/p5-namespace-clean>=0.19

.include <bsd.port.mk>
