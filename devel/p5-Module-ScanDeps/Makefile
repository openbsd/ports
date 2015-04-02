# $OpenBSD: Makefile,v 1.18 2015/04/02 20:04:42 jasper Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
DISTNAME=	Module-ScanDeps-1.18
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

TEST_DEPENDS +=	devel/p5-Test-Requires

.include <bsd.port.mk>
