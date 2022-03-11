GH_ACCOUNT =		pgRouting
GH_PROJECT =		osm2pgrouting
GH_TAGNAME =		v2.3.7

COMMENT =		convert OSM data to PgRouting format
CATEGORIES =		geo

HOMEPAGE =		http://pgrouting.org

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += 		boost_program_options-mt c expat m pq pqxx ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST =		Yes
MODULES =		devel/cmake
LIB_DEPENDS =		devel/boost \
			databases/libpqxx
RUN_DEPENDS =		geo/pgrouting

.include <bsd.port.mk>
