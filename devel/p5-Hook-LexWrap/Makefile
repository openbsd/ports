# $OpenBSD: Makefile,v 1.12 2017/04/28 22:00:28 benoit Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Hook-LexWrap-0.26
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

BUILD_DEPENDS=	devel/p5-Module-Build-Tiny

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
