# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:43 espie Exp $

COMMENT=	stemming of words

MODULES=	cpan
DISTNAME=	Lingua-Stem-0.84
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

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
