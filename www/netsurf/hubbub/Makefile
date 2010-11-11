# $OpenBSD: Makefile,v 1.2 2010/11/11 12:35:14 sthen Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.0.2

CATEGORIES =		www
SHARED_LIBS =		hubbub 0.0 #0.0.2

LIB_DEPENDS =		parserutils::www/netsurf/libparserutils
WANTLIB =		::www/netsurf/libparserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	::devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
