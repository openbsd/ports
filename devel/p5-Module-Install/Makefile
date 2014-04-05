# $OpenBSD: Makefile,v 1.21 2014/04/05 11:56:10 sthen Exp $

COMMENT=        standalone extensible Perl module installer

MODULES=	cpan
DISTNAME=	Module-Install-1.08
REVISION=	0
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Module-ScanDeps>=1.13 \
		devel/p5-File-Remove \
		devel/p5-PAR-Dist \
		devel/p5-YAML-Tiny>=1.38 \
		converters/p5-JSON

CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-test:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
