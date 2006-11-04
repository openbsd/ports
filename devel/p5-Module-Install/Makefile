# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 23:50:21 espie Exp $

COMMENT=        "standalone extensible Perl module installer"

DISTNAME=	Module-Install-0.64
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

RUN_DEPENDS=	::archivers/p5-Archive-Tar \
		::devel/p5-ExtUtils-ParseXS \
		::devel/p5-Module-Build \
		::devel/p5-Module-CoreList \
		::devel/p5-Module-ScanDeps \
		::devel/p5-PAR-Dist
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	--skip

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
