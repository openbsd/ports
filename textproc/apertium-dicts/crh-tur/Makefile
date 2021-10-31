# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:45 bentley Exp $

L =	crh-tur
LANG =	Crimean Tatar/Turkish
V =	0.3.0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/crh \
			textproc/apertium-dicts/tur \
			textproc/apertium-lex-tools \
			textproc/hfst \
			textproc/vislcg3

MAKE_ENV =		LC_CTYPE=en_US.UTF-8

.include <bsd.port.mk>
