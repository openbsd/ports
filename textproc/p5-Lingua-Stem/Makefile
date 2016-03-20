# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:06 naddy Exp $

COMMENT=	stemming of words

MODULES=	cpan
PKG_ARCH=	*
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
