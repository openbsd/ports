# $OpenBSD: Makefile,v 1.3 2016/01/19 03:41:50 bentley Exp $

L =	fr-ca
LANG =	French/Catalan
V =	1.0.3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
