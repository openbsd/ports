# $OpenBSD: Makefile,v 1.6 2021/10/31 12:09:45 bentley Exp $

L =	arg-cat
LANG =	Aragonese/Catalan
V =	0.1.0
REVISION =	3

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/arg \
			textproc/apertium-dicts/cat \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
