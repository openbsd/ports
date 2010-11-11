# $OpenBSD: Makefile,v 1.3 2010/11/11 12:35:14 sthen Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.0.2

CATEGORIES =		www
SHARED_LIBS =		css 0.0 #0.0.2

WANTLIB =		parserutils wapcaplet
LIB_DEPENDS =		::www/netsurf/libparserutils \
			::www/netsurf/libwapcaplet

.include <bsd.port.mk>
