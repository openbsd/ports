# $OpenBSD: Makefile,v 1.6 2007/05/22 21:13:07 simon Exp $

COMMENT=        "standalone extensible Perl module installer"

MODULES=	cpan
DISTNAME=	Module-Install-0.67
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::archivers/p5-Archive-Tar \
		::devel/p5-ExtUtils-ParseXS \
		::devel/p5-Module-Build \
		::devel/p5-Module-CoreList \
		::devel/p5-Module-ScanDeps \
		::devel/p5-PAR-Dist
BUILD_DEPENDS=	::devel/p5-version

CONFIGURE_ARGS=	--skip

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
