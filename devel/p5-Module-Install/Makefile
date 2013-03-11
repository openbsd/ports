# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:19 espie Exp $

COMMENT=        standalone extensible Perl module installer

MODULES=	cpan
DISTNAME=	Module-Install-1.06
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Module-ScanDeps \
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
