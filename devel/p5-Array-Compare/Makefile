# $OpenBSD: Makefile,v 1.15 2013/10/11 23:48:26 naddy Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
DISTNAME=	Array-Compare-2.01
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Moose

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
