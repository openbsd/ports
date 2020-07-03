# $OpenBSD: Makefile,v 1.8 2020/07/03 21:44:33 sthen Exp $

COMMENT =	fast, compact, powerful binary serialization

DISTNAME =	Sereal-Encoder-4.014
REVISION =	0

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
