# $OpenBSD: Makefile,v 1.8 2007/11/18 17:26:02 simon Exp $

COMMENT=	recursively scan Perl code for dependencies

MODULES=	cpan
DISTNAME=	Module-ScanDeps-0.78
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
