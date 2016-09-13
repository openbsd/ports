# $OpenBSD: Makefile,v 1.17 2016/09/13 19:15:03 naddy Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.6.0

SHARED_LIBS =		css 4.1 #0.5.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.2.2
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
