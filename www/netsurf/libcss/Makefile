# $OpenBSD: Makefile,v 1.11 2013/05/16 20:48:53 rpe Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.2.0
REVISION =		0

SHARED_LIBS =		css 2.2 #0.2.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.1.2 \
			www/netsurf/libwapcaplet>=0.2.0
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
