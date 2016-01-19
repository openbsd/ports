# $OpenBSD: Makefile,v 1.3 2016/01/19 03:41:34 bentley Exp $

L =	es-gl
LANG =	Spanish/Galician
V =	1.0.8

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
