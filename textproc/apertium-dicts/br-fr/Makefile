# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:18 bentley Exp $

L =	br-fr
LANG =	Breton/French
V =	0.5.0
REVISION =	0

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
