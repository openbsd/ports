# $OpenBSD: Makefile,v 1.21 2018/04/28 14:11:05 ajacoutot Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-ScanDeps-1.24
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

TEST_DEPENDS +=	devel/p5-Test-Requires \
		devel/p5-prefork

.include <bsd.port.mk>
