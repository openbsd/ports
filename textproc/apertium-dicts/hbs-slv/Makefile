# $OpenBSD: Makefile,v 1.3 2018/10/17 06:35:46 bentley Exp $

L =	hbs-slv
LANG =	Serbo-Croatian/Slovenian
V =	0.5.0
REVISION =	1

BUILD_DEPENDS +=	textproc/vislcg3 \
			textproc/apertium-lex-tools

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
