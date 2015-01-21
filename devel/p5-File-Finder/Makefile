# $OpenBSD: Makefile,v 1.9 2015/01/21 14:27:57 sthen Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
REVISION=	1
CATEGORIES=     devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
TEST_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
