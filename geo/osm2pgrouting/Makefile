# $OpenBSD: Makefile,v 1.9 2020/10/09 17:23:51 landry Exp $

GH_ACCOUNT =		pgRouting
GH_PROJECT =		osm2pgrouting
GH_TAGNAME =		v2.3.6

COMMENT =		convert OSM data to PgRouting format
CATEGORIES =		geo

HOMEPAGE =		http://pgrouting.org

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += 		boost_program_options-mt c expat m pq pqxx ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TESTS =		Yes
MODULES =		devel/cmake
LIB_DEPENDS =		devel/boost \
			databases/libpqxx
RUN_DEPENDS =		geo/pgrouting

.include <bsd.port.mk>
