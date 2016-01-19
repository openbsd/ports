# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:19 bentley Exp $

L =	en-es
LANG =	English/Spanish
V =	0.8.0
REVISION =	0

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
