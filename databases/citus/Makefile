# $OpenBSD: Makefile,v 1.11 2022/01/13 16:00:52 jeremy Exp $

COMMENT =		extension to horizontally scale PostgreSQL

GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v10.2.1

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
CONFIGURE_ARGS =	--without-libcurl --without-lz4 --without-zstd

.include <bsd.port.mk>
