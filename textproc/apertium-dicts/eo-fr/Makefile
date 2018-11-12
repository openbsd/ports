# $OpenBSD: Makefile,v 1.3 2018/11/12 12:49:43 bentley Exp $

L =	eo-fr
LANG =	Esperanto/French
V =	0.9.0
REVISION =	1

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
