# $OpenBSD: Makefile,v 1.5 2021/10/31 12:09:46 bentley Exp $

L =	hbs-slv
LANG =	Serbo-Croatian/Slovenian
V =	0.5.0
REVISION =	2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

BUILD_DEPENDS +=	textproc/vislcg3 \
			textproc/apertium-lex-tools

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
