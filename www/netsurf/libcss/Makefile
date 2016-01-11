# $OpenBSD: Makefile,v 1.15 2016/01/11 23:41:34 espie Exp $

COMMENT =		CSS parser and selection engine

NETSURF_PROJECT =	libcss
NETSURF_VERSION =	0.5.0
REVISION =		0

SHARED_LIBS =		css 4.1 #0.5.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.2.1 \
			www/netsurf/libwapcaplet>=0.2.2
WANTLIB += parserutils wapcaplet

.include <bsd.port.mk>
