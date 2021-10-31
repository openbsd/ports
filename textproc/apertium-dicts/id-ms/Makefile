# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:46 bentley Exp $

L =	id-ms
LANG =	Indonesian/Malaysian
V =	0.1.0
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
