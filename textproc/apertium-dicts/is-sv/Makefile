# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:20 bentley Exp $

L =	is-sv
LANG =	Icelandic/Swedish
V =	0.1.0
REVISION =	0

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

BUILD_DEPENDS +=	textproc/vislcg3

.include <bsd.port.mk>
