# $OpenBSD: Makefile,v 1.29 2020/07/03 21:45:00 sthen Exp $

COMMENT=	standalone extensible Perl module installer

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-Install-1.18
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+=	devel/p5-Module-ScanDeps \
		devel/p5-File-Remove \
		devel/p5-PAR-Dist \
		devel/p5-YAML-Tiny \
		converters/p5-JSON

# special case; this is *not* a CONFIGURE_STYLE=modbuild port
RUN_DEPENDS+=	devel/p5-Module-Build
BUILD_DEPENDS=	devel/p5-File-Remove \
		devel/p5-YAML-Tiny

CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-test:
	mkdir -p ${WRKDIR}/home

TEST_DEPENDS=	devel/p5-Module-Install-AuthorTests

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
