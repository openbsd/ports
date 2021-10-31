# $OpenBSD: Makefile,v 1.5 2021/10/31 12:09:45 bentley Exp $

L =	cat-srd
LANG =	Catalan/Sardinian
V =	1.0.0
REVISION =	2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/cat \
			textproc/apertium-dicts/srd \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
