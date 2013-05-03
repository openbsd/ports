# $OpenBSD: Makefile,v 1.10 2013/05/03 07:38:36 ajacoutot Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.2.0
REVISION =		0

CATEGORIES =		www
SHARED_LIBS =		css 2.2 #0.2.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.1.2 \
			www/netsurf/libwapcaplet>=0.2.0
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
