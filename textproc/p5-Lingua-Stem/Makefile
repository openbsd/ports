COMMENT=	stemming of words

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Lingua-Stem-2.31
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	textproc/p5-Lingua-PT-Stemmer \
		textproc/p5-Lingua-Stem-Fr>=0.02 \
		textproc/p5-Lingua-Stem-It \
		textproc/p5-Lingua-Stem-Ru \
		textproc/p5-Lingua-Stem-Snowball-Da>=1.01 \
		textproc/p5-Lingua-Stem-Snowball-No \
		textproc/p5-Lingua-Stem-Snowball-Se \
		textproc/p5-Text-German
TEST_DEPENDS=	devel/p5-Test-Distribution

MODCPAN_EXAMPLES=	Yes

MAKE_ENV +=	TEST_POD_COVERAGE=1 TEST_POD=1

.include <bsd.port.mk>
