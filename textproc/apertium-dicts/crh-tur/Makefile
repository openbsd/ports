# $OpenBSD: Makefile,v 1.2 2017/11/28 06:30:34 bentley Exp $

L =	crh-tur
LANG =	Crimean Tatar/Turkish
V =	0.3.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/crh \
			textproc/apertium-dicts/tur \
			textproc/apertium-lex-tools \
			textproc/hfst \
			textproc/vislcg3

MAKE_ENV =		LC_CTYPE=en_US.UTF-8

.include <bsd.port.mk>
