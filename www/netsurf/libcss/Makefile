# $OpenBSD: Makefile,v 1.5 2011/07/18 20:01:01 landry Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.1.0

CATEGORIES =		www
SHARED_LIBS =		css 1.0 #0.1.0

WANTLIB =		parserutils wapcaplet
LIB_DEPENDS =		www/netsurf/libparserutils \
			www/netsurf/libwapcaplet

.include <bsd.port.mk>
