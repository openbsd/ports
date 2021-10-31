# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:46 bentley Exp $

L =	ht-en
LANG =	Haitian Creole/English
V =	0.1.0
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`" \
			LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`"

.include <bsd.port.mk>
