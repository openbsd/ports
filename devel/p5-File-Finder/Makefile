# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:53 sthen Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-Finder-0.53
REVISION=	2
CATEGORIES=     devel

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	TEST_VERBOSE=Yes
TEST_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
