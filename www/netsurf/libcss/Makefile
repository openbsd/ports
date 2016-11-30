# $OpenBSD: Makefile,v 1.18 2016/11/30 07:35:00 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.6.1

SHARED_LIBS =		css 4.1 #0.5.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
