# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:23 naddy Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-Finder-0.53
REVISION=	1
CATEGORIES=     devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
TEST_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
