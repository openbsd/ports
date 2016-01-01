# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:54:26 bentley Exp $

L =	eu-en
LANG =	Basque/English
V =	0.3.1

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
