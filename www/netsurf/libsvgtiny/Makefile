# $OpenBSD: Makefile,v 1.8 2019/11/11 03:21:56 bentley Exp $

COMMENT =		SVG Tiny implementation

NETSURF_PROJECT =	libsvgtiny
NETSURF_VERSION =	0.1.7
REVISION =		0

CATEGORIES =		graphics
SHARED_LIBS =		svgtiny 0.0 #0.1.4

BUILD_DEPENDS +=	devel/gperf
LIB_DEPENDS =		www/netsurf/libdom>=0.3.2

WANTLIB += dom expat hubbub iconv m parserutils wapcaplet

.include <bsd.port.mk>
