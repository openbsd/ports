# $OpenBSD: Makefile,v 1.4 2021/11/15 04:28:41 bentley Exp $

L =	urd-hin
LANG =	Urdu/Hindu
V =	0.1.0
REVISION =	0

BROKEN =	0.1.0 incompatible with apertium>=3.7.2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =		Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/hin \
			textproc/apertium-dicts/urd \
			textproc/apertium-lex-tools \
			textproc/vislcg3

.include <bsd.port.mk>
