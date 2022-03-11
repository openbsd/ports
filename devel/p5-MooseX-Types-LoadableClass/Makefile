COMMENT =	ClassName type constraint with coercion to load the class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Types-LoadableClass-0.015
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=	Yes

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild tiny

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Class-Load \
		devel/p5-Moose \
		devel/p5-Test-Fatal \
		devel/p5-namespace-clean>=0.19

.include <bsd.port.mk>
