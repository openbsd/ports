# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:43 espie Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	hubbub
NETSURF_VERSION =	0.1.2
REVISION =		0

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.0 #0.1.2

LIB_DEPENDS =		www/netsurf/libparserutils
WANTLIB =		parserutils

# test broken - needs an old version of json-c
# TEST_DEPENDS =	devel/json-c
NO_TEST =		Yes

.include <bsd.port.mk>
