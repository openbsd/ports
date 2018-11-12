# $OpenBSD: Makefile,v 1.3 2018/11/12 12:49:43 bentley Exp $

L =	is-en
LANG =	Icelandic/English
V =	0.1.0
REVISION =	1

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
