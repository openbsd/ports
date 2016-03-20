# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:25 naddy Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Hook-LexWrap-0.25
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

BUILD_DEPENDS=	devel/p5-Module-Build-Tiny

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
