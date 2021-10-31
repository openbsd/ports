# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:46 bentley Exp $

L =	es-ro
LANG =	Spanish/Romanian
V =	0.7.3
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/0.7/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
