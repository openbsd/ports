# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:19 bentley Exp $

L =	en-gl
LANG =	English/Galician
V =	0.5.1
REVISION =	0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
