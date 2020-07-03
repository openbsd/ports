# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:39 sthen Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Array-Compare-2.12
CATEGORIES=	devel
REVISION=	0

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
