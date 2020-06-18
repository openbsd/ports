# $OpenBSD: Makefile,v 1.7 2020/06/18 19:43:21 fcambus Exp $

COMMENT =	fast, compact, powerful binary serialization

DISTNAME =	Sereal-Encoder-4.014

CATEGORIES =	converters

# Perl, BSD, LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =	c perl zstd

MODULES =	cpan

BUILD_DEPENDS =	devel/p5-Devel-CheckLib

LIB_DEPENDS =	archivers/zstd

TEST_DEPENDS =	converters/p5-Sereal-Decoder>=4.002 \
		devel/p5-Test-Deep \
		devel/p5-Test-Differences \
		devel/p5-Test-LongString \
		devel/p5-Test-Warn

CPAN_AUTHOR =	YVES

post-extract:
	rm -r -- ${WRKSRC}/inc/Devel ${WRKSRC}/zstd

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
