# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:46 bentley Exp $

L =	fr-es
LANG =	French/Spanish
V =	0.9.2
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
