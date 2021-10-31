# $OpenBSD: Makefile,v 1.2 2021/10/31 12:09:47 bentley Exp $

L =	rus-ukr
LANG =	Russian/Ukrainian
V =	0.2.0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/ukr \
			textproc/apertium-dicts/rus \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
