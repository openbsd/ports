# $OpenBSD: Makefile,v 1.8 2021/02/09 20:02:39 jeremy Exp $

COMMENT =		extension to horizontally scale PostgreSQL
GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v9.5.0

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
