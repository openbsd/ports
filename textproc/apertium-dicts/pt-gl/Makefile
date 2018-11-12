# $OpenBSD: Makefile,v 1.3 2018/11/12 12:49:44 bentley Exp $

L =	pt-gl
LANG =	Portuguese/Galician
V =	0.9.2
REVISION =	1

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
