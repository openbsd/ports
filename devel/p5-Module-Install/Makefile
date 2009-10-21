# $OpenBSD: Makefile,v 1.12 2009/10/21 22:49:48 sthen Exp $

COMMENT=        standalone extensible Perl module installer

MODULES=	cpan
DISTNAME=	Module-Install-0.91
PKGNAME=	p5-${DISTNAME}p0
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
		:p5-YAML-Tiny->=1.38:devel/p5-YAML-Tiny \
		::converters/p5-JSON

CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-regress:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
