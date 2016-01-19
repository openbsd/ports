# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:18 bentley Exp $

L =	af-nl
LANG =	Afrikaans/Dutch
V =	0.2.0
REVISION =	0

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
