# $OpenBSD: Makefile,v 1.4 2017/04/21 20:34:19 bentley Exp $

COMMENT =		SVG Tiny implementation

NETSURF_PROJECT =	libsvgtiny
NETSURF_VERSION =	0.1.5
REVISION =		0

CATEGORIES =		graphics
SHARED_LIBS =		svgtiny 0.0 #0.1.4

BUILD_DEPENDS +=	devel/gperf
LIB_DEPENDS =		www/netsurf/libdom>=0.3.1

WANTLIB += dom expat hubbub iconv m parserutils wapcaplet

.include <bsd.port.mk>
