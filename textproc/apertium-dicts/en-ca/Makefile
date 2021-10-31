# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:45 bentley Exp $

L =	en-ca
LANG =	English/Catalan
V =	0.9.3
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
