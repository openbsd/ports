# $OpenBSD: Makefile,v 1.8 2013/03/05 08:02:35 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.1.2
REVISION =		0

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.0 #0.1.2

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
