# $OpenBSD: Makefile,v 1.23 2019/11/11 03:21:55 bentley Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.9.0
REVISION =		0

SHARED_LIBS =		css 6.0 #0.9.0

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.4.0
WANTLIB += iconv parserutils wapcaplet

.include <bsd.port.mk>
