# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:19 bentley Exp $

L =	eo-fr
LANG =	Esperanto/French
V =	0.9.0
REVISION =	0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
