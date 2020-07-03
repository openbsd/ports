# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:46 sthen Exp $

COMMENT=		measure readability of English text

DISTNAME =		Lingua-EN-Fathom-1.22
CATEGORIES=		textproc
REVISION =		0

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Lingua-EN-Syllable \
			textproc/p5-Lingua-EN-Sentence

.include <bsd.port.mk>
