# $OpenBSD: Makefile,v 1.21 2018/09/25 08:48:59 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.8.0

SHARED_LIBS =		css 5.1 #0.8.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
