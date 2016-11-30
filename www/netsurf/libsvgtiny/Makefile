# $OpenBSD: Makefile,v 1.3 2016/11/30 07:35:00 bentley Exp $

COMMENT =		SVG Tiny implementation

NETSURF_PROJECT =	libsvgtiny
NETSURF_VERSION =	0.1.5

CATEGORIES =		graphics
SHARED_LIBS =		svgtiny 0.0 #0.1.4

BUILD_DEPENDS +=	devel/gperf
LIB_DEPENDS =		www/netsurf/libdom>=0.3.1

WANTLIB += dom expat hubbub iconv m parserutils wapcaplet

.include <bsd.port.mk>
