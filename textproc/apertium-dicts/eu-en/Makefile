# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:46 bentley Exp $

L =	eu-en
LANG =	Basque/English
V =	0.3.1
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
