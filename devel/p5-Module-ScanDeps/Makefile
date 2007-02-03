# $OpenBSD: Makefile,v 1.4 2007/02/03 19:10:39 simon Exp $

COMMENT=	"recursively scan Perl code for dependencies"

MODULES=	cpan
DISTNAME=	Module-ScanDeps-0.71
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
