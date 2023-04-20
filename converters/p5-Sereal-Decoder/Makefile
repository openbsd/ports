COMMENT =	fast, compact, powerful binary deserialization

DISTNAME =	Sereal-Decoder-5.004
CPAN_AUTHOR =	YVES

CATEGORIES =	converters

# Perl, BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl zstd

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Devel-CheckLib>=1.16

LIB_DEPENDS =		archivers/zstd

TEST_DEPENDS =		converters/p5-Sereal-Encoder \
			devel/p5-Test-Deep \
			devel/p5-Test-Differences \
			devel/p5-Test-LongString \
			devel/p5-Test-Warn

post-extract:
	rm -r -- ${WRKSRC}/inc/Devel ${WRKSRC}/zstd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
