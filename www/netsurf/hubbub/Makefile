# $OpenBSD: Makefile,v 1.4 2010/11/22 08:36:49 espie Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.0.2

CATEGORIES =		www
SHARED_LIBS =		hubbub 0.0 #0.0.2

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
