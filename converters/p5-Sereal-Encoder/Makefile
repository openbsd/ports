COMMENT =	fast, compact, powerful binary serialization

# Always upgrade the Decoder before the Encoder.
VERSION =	5.004
DISTNAME =	Sereal-Encoder-${VERSION}
CPAN_AUTHOR =	YVES

CATEGORIES =	converters

# Perl, BSD, LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl zstd

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Devel-CheckLib>=1.16

LIB_DEPENDS =		archivers/zstd

TEST_DEPENDS =		converters/p5-Sereal-Decoder>=${VERSION} \
			devel/p5-Test-Deep \
			devel/p5-Test-Differences \
			devel/p5-Test-LongString \
			devel/p5-Test-Warn

post-extract:
	rm -r -- ${WRKSRC}/inc/Devel ${WRKSRC}/zstd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
