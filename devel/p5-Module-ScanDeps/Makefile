# $OpenBSD: Makefile,v 1.16 2014/03/19 09:02:54 jasper Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
DISTNAME=	Module-ScanDeps-1.13
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

TEST_DEPENDS +=	devel/p5-Test-Requires

.include <bsd.port.mk>
