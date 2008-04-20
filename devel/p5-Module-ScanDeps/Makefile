# $OpenBSD: Makefile,v 1.9 2008/04/20 17:46:50 simon Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
DISTNAME=	Module-ScanDeps-0.83
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-version
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
