# $OpenBSD: Makefile,v 1.1.1.1 2016/09/01 00:26:29 bentley Exp $

COMMENT =		SVG Tiny implementation

NETSURF_PROJECT =	libsvgtiny
NETSURF_VERSION =	0.1.4

CATEGORIES =		graphics
SHARED_LIBS =		svgtiny 0.0 #0.1.4

LIB_DEPENDS =		www/netsurf/libdom

WANTLIB += dom expat hubbub iconv m parserutils wapcaplet

.include <bsd.port.mk>
