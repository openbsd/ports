# $OpenBSD: Makefile,v 1.3 2018/10/17 06:35:46 bentley Exp $

L =	is-sv
LANG =	Icelandic/Swedish
V =	0.1.0
REVISION =	1

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

BUILD_DEPENDS +=	textproc/vislcg3

.include <bsd.port.mk>
