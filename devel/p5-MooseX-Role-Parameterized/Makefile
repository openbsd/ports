# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:02 sthen Exp $

COMMENT =	roles with composition parameters

DISTNAME =	MooseX-Role-Parameterized-1.11
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Module-Runtime \
			devel/p5-Moose \
			devel/p5-namespace-autoclean \
			devel/p5-namespace-clean>=0.19

TEST_DEPENDS =		devel/p5-CPAN-Meta-Check>=0.011 \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires

CONFIGURE_STYLE =	modbuild tiny

# Remove *.pod from the package, they're redundant with generated
# manpages
post-install:
	@rm -f 	${PREFIX}/${P5SITE}/MooseX/Role/Parameterized/Extending.pod \
		${PREFIX}/${P5SITE}/MooseX/Role/Parameterized/Tutorial.pod



.include <bsd.port.mk>
