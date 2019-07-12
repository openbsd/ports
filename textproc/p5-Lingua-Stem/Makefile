# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:04 sthen Exp $

COMMENT=	stemming of words

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Lingua-Stem-0.84
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Lingua-PT-Stemmer \
		textproc/p5-Lingua-Stem-Fr \
		textproc/p5-Lingua-Stem-It \
		textproc/p5-Lingua-Stem-Ru \
		textproc/p5-Lingua-Stem-Snowball-Da \
		textproc/p5-Lingua-Stem-Snowball-No \
		textproc/p5-Lingua-Stem-Snowball-Se \
		textproc/p5-Text-German

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
