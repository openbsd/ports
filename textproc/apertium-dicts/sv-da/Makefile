# $OpenBSD: Makefile,v 1.3 2016/01/19 03:42:06 bentley Exp $

L =	sv-da
LANG =	Swedish/Danish
V =	0.5.1

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
