# $OpenBSD: Makefile,v 1.12 2020/02/06 13:03:20 benoit Exp $

COMMENT=		measure readability of English text

DISTNAME =		Lingua-EN-Fathom-1.22
CATEGORIES=		textproc

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Lingua-EN-Syllable \
			textproc/p5-Lingua-EN-Sentence

.include <bsd.port.mk>
