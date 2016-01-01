# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:54:26 bentley Exp $

L =	fr-es
LANG =	French/Spanish
V =	0.9.2

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
