# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:21 bentley Exp $

L =	oc-ca
LANG =	Occitan/Catalan
V =	1.0.6
REVISION =	0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
