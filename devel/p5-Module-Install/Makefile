# $OpenBSD: Makefile,v 1.26 2018/04/28 14:07:55 ajacoutot Exp $

COMMENT=	standalone extensible Perl module installer

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Module-Install-1.18
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS+=	devel/p5-Module-ScanDeps \
		devel/p5-File-Remove \
		devel/p5-PAR-Dist \
		devel/p5-YAML-Tiny \
		converters/p5-JSON

# special case; this is *not* a CONFIGURE_STYLE=modbuild port
RUN_DEPENDS+=	devel/p5-Module-Build

CONFIGURE_ARGS=	--skipdeps

# for the CPAN regression test
pre-test:
	mkdir -p ${WRKDIR}/home

TEST_DEPENDS=	devel/p5-Module-Install-AuthorTests

PORTHOME=	${WRKDIR}/home
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
