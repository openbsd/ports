# $OpenBSD: Makefile,v 1.12 2014/04/28 09:02:15 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.3.0

SHARED_LIBS =		css 3.0 #0.3.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.2.0 \
			www/netsurf/libwapcaplet>=0.2.1
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
