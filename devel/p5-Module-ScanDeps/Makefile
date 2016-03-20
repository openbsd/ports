# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:28 naddy Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-ScanDeps-1.18
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

TEST_DEPENDS +=	devel/p5-Test-Requires

.include <bsd.port.mk>
