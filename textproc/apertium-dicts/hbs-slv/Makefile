# $OpenBSD: Makefile,v 1.4 2018/11/12 12:49:43 bentley Exp $

L =	hbs-slv
LANG =	Serbo-Croatian/Slovenian
V =	0.5.0
REVISION =	2

BUILD_DEPENDS +=	textproc/vislcg3 \
			textproc/apertium-lex-tools

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
