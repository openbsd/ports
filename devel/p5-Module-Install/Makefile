# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:29 espie Exp $

COMMENT=        "standalone extensible Perl module installer"

MODULES=	cpan
DISTNAME=	Module-Install-0.64
CATEGORIES=     devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

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
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod

CONFIGURE_ARGS=	--skip

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
