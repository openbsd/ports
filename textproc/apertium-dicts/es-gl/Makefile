# $OpenBSD: Makefile,v 1.5 2021/10/31 12:09:46 bentley Exp $

L =	es-gl
LANG =	Spanish/Galician
V =	1.0.8
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/1.0/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
