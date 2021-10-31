# $OpenBSD: Makefile,v 1.2 2021/10/31 12:09:47 bentley Exp $

L =	spa-ita
LANG =	Spanish/Italian
V =	0.1.0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/ita \
			textproc/apertium-dicts/spa \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
