# $OpenBSD: Makefile,v 1.13 2014/10/13 09:29:20 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.4.0

SHARED_LIBS =		css 4.0 #0.4.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.2.0 \
			www/netsurf/libwapcaplet>=0.2.1
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
