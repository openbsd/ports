# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:57 sthen Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Hook-LexWrap-0.26
CATEGORIES=	devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

BUILD_DEPENDS=	devel/p5-Module-Build-Tiny

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
