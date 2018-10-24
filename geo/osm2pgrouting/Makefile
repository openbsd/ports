# $OpenBSD: Makefile,v 1.7 2018/10/24 14:28:04 sthen Exp $

GH_ACCOUNT =		pgRouting
GH_PROJECT =		osm2pgrouting
GH_TAGNAME =		v2.0.0
REVISION =		2

COMMENT =		convert OSM data to PgRouting format
CATEGORIES =		geo

HOMEPAGE =		http://pgrouting.org

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c expat m pq ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		databases/postgresql
RUN_DEPENDS =		geo/pgrouting

.include <bsd.port.mk>
