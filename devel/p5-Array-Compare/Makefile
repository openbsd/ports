# $OpenBSD: Makefile,v 1.17 2015/11/24 18:31:15 jasper Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
DISTNAME=	Array-Compare-2.11
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Moose \
		devel/p5-Type-Tiny

TEST_DEPENDS=	devel/p5-Test-NoWarnings

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
