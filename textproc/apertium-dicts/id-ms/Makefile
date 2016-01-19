# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:20 bentley Exp $

L =	id-ms
LANG =	Indonesian/Malaysian
V =	0.1.0
REVISION =	0

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
