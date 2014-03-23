# $OpenBSD: Makefile,v 1.16 2014/03/23 13:59:37 jasper Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
DISTNAME=	Array-Compare-2.02
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Moose

TEST_DEPENDS=	devel/p5-Test-NoWarnings

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
