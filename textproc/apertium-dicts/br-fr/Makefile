# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:45 bentley Exp $

L =	br-fr
LANG =	Breton/French
V =	0.5.0
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
