# $OpenBSD: Makefile,v 1.8 2019/01/07 00:31:52 afresh1 Exp $

COMMENT=		test file attributes

DISTNAME=		Test-File-1.443
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Test-Manifest
TEST_DEPENDS=		devel/p5-Test-utf8

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
