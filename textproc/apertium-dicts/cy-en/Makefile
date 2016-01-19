# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:18 bentley Exp $

L =	cy-en
LANG =	Welsh/English
V =	0.1.1
REVISION =	0

USE_GMAKE =		Yes

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
