# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:46 bentley Exp $

L =	is-sv
LANG =	Icelandic/Swedish
V =	0.1.0
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

BUILD_DEPENDS +=	textproc/vislcg3

.include <bsd.port.mk>
