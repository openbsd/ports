# $OpenBSD: Makefile,v 1.4 2018/11/12 12:49:44 bentley Exp $

L =	sv-da
LANG =	Swedish/Danish
V =	0.5.1
REVISION =	0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
