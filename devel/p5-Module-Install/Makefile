# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=        "standalone extensible Perl module installer"

MODULES=	cpan
DISTNAME=	Module-Install-0.64
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

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

CONFIGURE_ARGS=	--skip

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
