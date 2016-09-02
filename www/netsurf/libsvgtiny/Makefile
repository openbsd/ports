# $OpenBSD: Makefile,v 1.2 2016/09/02 05:15:17 bentley Exp $

COMMENT =		SVG Tiny implementation

NETSURF_PROJECT =	libsvgtiny
NETSURF_VERSION =	0.1.4

CATEGORIES =		graphics
SHARED_LIBS =		svgtiny 0.0 #0.1.4

BUILD_DEPENDS +=	devel/gperf
LIB_DEPENDS =		www/netsurf/libdom

WANTLIB += dom expat hubbub iconv m parserutils wapcaplet

.include <bsd.port.mk>
