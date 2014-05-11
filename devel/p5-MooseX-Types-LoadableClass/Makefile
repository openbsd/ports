# $OpenBSD: Makefile,v 1.3 2014/05/11 16:28:49 afresh1 Exp $

COMMENT =	ClassName type constraint with coercion to load the class

MODULES =	cpan
DISTNAME =	MooseX-Types-LoadableClass-0.012
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Module-Runtime \
		devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean

BUILD_DEPENDS =	devel/p5-Module-Build-Tiny>=0.030

TEST_DEPENDS = 	devel/p5-Test-Fatal

.include <bsd.port.mk>
