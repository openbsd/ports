# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:50 simon Exp $

COMMENT=	"recursively scan Perl code for dependencies"

MODULES=	cpan
DISTNAME=	Module-ScanDeps-0.71
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
