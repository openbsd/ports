# $OpenBSD: Makefile,v 1.3 2016/01/19 03:41:18 bentley Exp $

L =	en-gl
LANG =	English/Galician
V =	0.5.2

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
