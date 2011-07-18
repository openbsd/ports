# $OpenBSD: Makefile,v 1.5 2011/07/18 20:05:47 landry Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.1.0

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.0 #0.1.0

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
