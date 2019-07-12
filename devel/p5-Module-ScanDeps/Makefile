# $OpenBSD: Makefile,v 1.23 2019/07/12 20:45:00 sthen Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-ScanDeps-1.24
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	TEST_POD=Yes

TEST_DEPENDS +=	devel/p5-Test-Requires \
		devel/p5-prefork

.include <bsd.port.mk>
