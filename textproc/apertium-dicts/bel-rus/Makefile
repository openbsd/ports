# $OpenBSD: Makefile,v 1.2 2021/10/31 12:09:45 bentley Exp $

L =	bel-rus
LANG =	Belarusian/Russian
V =	0.2.0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/bel \
			textproc/apertium-dicts/rus \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
