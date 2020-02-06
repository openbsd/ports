# $OpenBSD: Makefile,v 1.7 2020/02/06 00:37:13 jeremy Exp $

COMMENT =		extension to horizontally scale PostgreSQL
GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v9.0.1

CATEGORIES =		databases
HOMEPAGE =		https://www.citusdata.com/

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto pq ssl

LIB_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libcurl

.include <bsd.port.mk>
