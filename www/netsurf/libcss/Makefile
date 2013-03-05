# $OpenBSD: Makefile,v 1.8 2013/03/05 08:02:35 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.1.2
REVISION =		0

CATEGORIES =		www
SHARED_LIBS =		css 2.1 #0.1.2

WANTLIB =		parserutils wapcaplet
LIB_DEPENDS =		www/netsurf/libparserutils \
			www/netsurf/libwapcaplet

.include <bsd.port.mk>
