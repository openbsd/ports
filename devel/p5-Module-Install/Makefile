# $OpenBSD: Makefile,v 1.25 2017/01/09 11:06:45 zhuk Exp $

COMMENT=	standalone extensible Perl module installer

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-Install-1.08
REVISION=	3
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS+=	devel/p5-Module-ScanDeps>=1.13 \
		devel/p5-File-Remove \
		devel/p5-PAR-Dist \
		devel/p5-YAML-Tiny>=1.38 \
		converters/p5-JSON

# special case; this is *not* a CONFIGURE_STYLE=modbuild port
RUN_DEPENDS+=	devel/p5-Module-Build

CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-test:
	mkdir -p ${WRKDIR}/home

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
