# $OpenBSD: Makefile,v 1.19 2021/11/02 00:01:14 sthen Exp $

COMMENT =		OSM data to PostgreSQL converter

GH_TAGNAME =		1.4.2
GH_PROJECT =		osm2pgsql
GH_ACCOUNT =		openstreetmap
REVISION =		0

CATEGORIES =		geo databases

HOMEPAGE =		https://osm2pgsql.org/

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

WANTLIB += boost_system-mt boost_filesystem-mt bz2 c expat
WANTLIB += m pthread pq proj z ${MODLUA_WANTLIB} ${COMPILER_LIBCXX}

# postgresql needs to be first otherwise tests are done by cmake module
MODULES =		databases/postgresql    \
			devel/cmake		\
			lang/python		\
			lang/lua

LIB_DEPENDS =		databases/postgresql	\
			devel/proj		\
			devel/boost		\

BUILD_DEPENDS =		devel/libtool \
			devel/protozero \
			geo/libosmium>=2.15.6

# postgresql,-contrib is needed for hstore extension
TEST_DEPENDS =		databases/py-psycopg2	\
			geo/postgis		\
			databases/postgresql,-contrib

COMPILER =		base-clang ports-gcc

MODPY_ADJ_FILES =	tests/regression-test.py

MODLUA_VERSION =	5.2
MODLUA_SA =		Yes

CONFIGURE_ARGS =	-DBUILD_TESTS=ON \
			-DEXTERNAL_LIBOSMIUM=ON \
			-DEXTERNAL_PROTOZERO=ON \
			-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include/utfcpp \
				${CXXFLAGS}"

# bump postgresql,-server limits according to its README otherwise some
# tests fail
MODPOSTGRESQL_TEST_DBNAME =	osm2pgsql-test
MODPOSTGRESQL_TEST_CMD =	${MODCMAKE_TEST_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	rm -f ${WRKSRC}/cmake/FindLua.cmake

post-patch:
	@${SUBST_CMD} ${WRKSRC}/docs/osm2pgsql.1

.include <bsd.port.mk>
