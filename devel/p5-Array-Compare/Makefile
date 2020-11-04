# $OpenBSD: Makefile,v 1.22 2020/11/04 02:06:02 afresh1 Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Array-Compare-v3.0.3
PKGNAME=	${DISTNAME:S/v//g}
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-NoWarnings
RUN_DEPENDS=	devel/p5-Moo \
		devel/p5-Type-Tiny

TEST_DEPENDS=	devel/p5-Test-NoWarnings

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
