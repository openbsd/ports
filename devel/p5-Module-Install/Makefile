# $OpenBSD: Makefile,v 1.10 2009/05/07 10:45:58 simon Exp $

COMMENT=        standalone extensible Perl module installer

MODULES=	cpan
DISTNAME=	Module-Install-0.87
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Module-ScanDeps \
		::devel/p5-File-Remove \
		::devel/p5-PAR-Dist \
		::devel/p5-YAML-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS=	--skip

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
