# $OpenBSD: Makefile,v 1.11 2019/07/12 21:02:16 sthen Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-Finder-0.53
REVISION=	1
CATEGORIES=     devel

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	TEST_VERBOSE=Yes
TEST_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
