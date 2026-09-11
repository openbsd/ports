COMMENT =	standalone, extensible Perl module installer

DISTNAME =	Module-Install-1.21
CPAN_AUTHOR =	ETHER
FIX_EXTRACT_PERMISSIONS =	Yes

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-YAML-Tiny>=1.33
RUN_DEPENDS =		converters/p5-JSON>=2.9 \
			devel/p5-File-Remove>=1.42 \
			devel/p5-Module-Build>=0.29 \
			devel/p5-Module-ScanDeps>=1.09 \
			devel/p5-PAR-Dist>=0.29 \
			devel/p5-YAML-Tiny>=1.38
TEST_DEPENDS =		devel/p5-Module-Install-AuthorTests

# special case; this is *not* a CONFIGURE_STYLE=modbuild port
CONFIGURE_ARGS =	--skipdeps

PKG_ARCH =		*

PORTHOME =		${WRKDIR}/home

# for the CPAN regression test
pre-test:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
