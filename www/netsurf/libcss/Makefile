# $OpenBSD: Makefile,v 1.19 2017/11/04 22:28:01 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.7.0

SHARED_LIBS =		css 5.0 #0.7.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
