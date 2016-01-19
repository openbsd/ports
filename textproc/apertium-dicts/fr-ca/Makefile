# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:20 bentley Exp $

L =	fr-ca
LANG =	French/Catalan
V =	1.0.2
REVISION =	0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
