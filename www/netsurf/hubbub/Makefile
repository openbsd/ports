# $OpenBSD: Makefile,v 1.6 2012/01/12 03:17:08 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.1.1

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.0 #0.1.1

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
