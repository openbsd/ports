# $OpenBSD: Makefile,v 1.10 2015/01/26 19:53:44 sthen Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
DISTNAME=	Hook-LexWrap-0.25
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

BUILD_DEPENDS=	devel/p5-Module-Build-Tiny

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
