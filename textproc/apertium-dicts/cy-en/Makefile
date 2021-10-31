# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:45 bentley Exp $

L =	cy-en
LANG =	Welsh/English
V =	0.1.1
REVISION =	0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/0.1.0/

USE_GMAKE =		Yes

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
