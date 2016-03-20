# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:13 naddy Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
PKG_ARCH=	*
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
