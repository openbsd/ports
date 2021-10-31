# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:47 bentley Exp $

L =	spa-arg
LANG =	Spanish/Aragonese
V =	0.4.0
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/arg \
			textproc/apertium-dicts/spa \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
