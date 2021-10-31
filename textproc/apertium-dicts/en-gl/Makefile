# $OpenBSD: Makefile,v 1.5 2021/10/31 12:09:45 bentley Exp $

L =	en-gl
LANG =	English/Galician
V =	0.5.2
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/0.5.1/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
