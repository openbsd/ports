# $OpenBSD: Makefile,v 1.7 2012/04/30 07:11:58 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.1.2

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.0 #0.1.2

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
