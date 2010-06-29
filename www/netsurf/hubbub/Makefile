# $OpenBSD: Makefile,v 1.1.1.1 2010/06/29 20:11:13 landry Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.0.2

CATEGORIES =		www
SHARED_LIBS =		hubbub 0.0 #0.0.2

LIB_DEPENDS =		parserutils::www/netsurf/libparserutils

# regress broken - needs an old version of json-c
# REGRESS_DEPENDS =	::devel/json-c
NO_REGRESS =		Yes

.include <bsd.port.mk>
