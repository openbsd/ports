COMMENT=	Perl module for comparing arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Array-Compare-v3.0.8
PKGNAME=	${DISTNAME:S/v//g}
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	DAVECROSS

RUN_DEPENDS=	devel/p5-Moo \
		devel/p5-Type-Tiny

TEST_DEPENDS=	devel/p5-Test-NoWarnings

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
