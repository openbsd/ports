# $OpenBSD: Makefile,v 1.16 2019/02/06 16:14:41 cwen Exp $

COMMENT =	roles with composition parameters

DISTNAME =	MooseX-Role-Parameterized-1.10
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-Module-Build-Tiny
RUN_DEPENDS =	devel/p5-Moose
TEST_DEPENDS =	devel/p5-CPAN-Meta-Check \
		devel/p5-MooseX-Role-WithOverloading \
		devel/p5-Test-Exception \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

# Remove *.pod from the package, they're redundant with generated
# manpages
post-install:
	@rm -f 	${PREFIX}/${P5SITE}/MooseX/Role/Parameterized/Extending.pod \
		${PREFIX}/${P5SITE}/MooseX/Role/Parameterized/Tutorial.pod



.include <bsd.port.mk>
