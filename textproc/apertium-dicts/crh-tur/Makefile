# $OpenBSD: Makefile,v 1.1.1.1 2017/11/04 00:05:24 bentley Exp $

L =	crh-tur
LANG =	Crimean Tatar/Turkish
V =	0.2.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/crh \
			textproc/apertium-dicts/tur \
			textproc/apertium-lex-tools \
			textproc/hfst \
			textproc/vislcg3

MAKE_ENV =		LC_CTYPE=en_US.UTF-8

.include <bsd.port.mk>
