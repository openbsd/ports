# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:45 bentley Exp $

L =	af-nl
LANG =	Afrikaans/Dutch
V =	0.2.0
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
