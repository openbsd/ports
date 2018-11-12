# $OpenBSD: Makefile,v 1.3 2018/11/12 12:49:43 bentley Exp $

L =	ht-en
LANG =	Haitian Creole/English
V =	0.1.0
REVISION =	1

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`" \
			LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`"

.include <bsd.port.mk>
