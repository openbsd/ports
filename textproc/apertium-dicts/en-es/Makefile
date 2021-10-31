# $OpenBSD: Makefile,v 1.4 2021/10/31 12:09:45 bentley Exp $

L =	en-es
LANG =	English/Spanish
V =	0.8.0
REVISION =	1

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
