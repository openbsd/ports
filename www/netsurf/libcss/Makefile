# $OpenBSD: Makefile,v 1.9 2013/05/03 07:32:34 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.2.0

CATEGORIES =		www
SHARED_LIBS =		css 2.2 #0.2.0

LIB_DEPENDS =		www/netsurf/libparserutils>=0.1.2 \
			www/netsurf/libwapcaplet>=0.2.0
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
