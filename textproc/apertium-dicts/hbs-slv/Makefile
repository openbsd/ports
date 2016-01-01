# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:54:26 bentley Exp $

L =	hbs-slv
LANG =	Serbo-Croatian/Slovenian
V =	0.5.0

BUILD_DEPENDS +=	textproc/vislcg3 \
			textproc/apertium-lex-tools

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
