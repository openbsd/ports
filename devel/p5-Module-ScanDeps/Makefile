# $OpenBSD: Makefile,v 1.3 2006/12/25 15:17:52 simon Exp $

COMMENT=	"recursively scan Perl code for dependencies"

MODULES=	cpan
DISTNAME=	Module-ScanDeps-0.70
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
