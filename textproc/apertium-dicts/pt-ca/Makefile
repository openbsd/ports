# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:47 bentley Exp $

L =	pt-ca
LANG =	Portuguese/Catalan
V =	0.8.2
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
