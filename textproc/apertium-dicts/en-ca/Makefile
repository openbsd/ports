# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:54:26 bentley Exp $

L =	en-ca
LANG =	English/Catalan
V =	0.9.3

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
