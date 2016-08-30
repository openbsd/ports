# $OpenBSD: Makefile,v 1.6 2016/08/30 15:22:06 danj Exp $

COMMENT =		OSM data to PostgreSQL converter

GH_TAGNAME =		0.90.1
GH_PROJECT =		osm2pgsql
GH_ACCOUNT =		openstreetmap

CATEGORIES =		geo databases

HOMEPAGE =		http://wiki.openstreetmap.org/wiki/Osm2pgsql

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes

WANTLIB += boost_system-mt boost_filesystem-mt bz2 c expat
WANTLIB += geos m pthread pq proj z ${MODLUA_WANTLIB}

# postgresql needs to be first otherwise tests are done by cmake module
MODULES =		databases/postgresql    \
			devel/cmake		\
			gcc4			\
			lang/python		\
			lang/lua

LIB_DEPENDS =		databases/postgresql	\
			devel/proj		\
			geo/geos		\
			devel/boost		\

BUILD_DEPENDS =		devel/libtool

# postgresql,-contrib is needed for hstore extension
TEST_DEPENDS =		databases/py-psycopg2	\
			geo/postgis		\
			databases/postgresql,-contrib

MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++

MODPY_ADJ_FILES =	tests/regression-test.py

MODLUA_VERSION =	5.2
MODLUA_SA =		Yes

CONFIGURE_ARGS =	-DBUILD_TESTS=ON

# bump postgresql,-server limits according to its README otherwise some
# tests fail
MODPOSTGRESQL_TEST_DBNAME =	osm2pgsql-test
MODPOSTGRESQL_TEST_CMD =	cd ${WRKSRC} && ${MODPY_BIN} tests/regression-test.py \
				-x ${WRKBUILD}/osm2pgsql

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	rm -f ${WRKSRC}/cmake/FindLua.cmake

post-patch:
	@${SUBST_CMD} ${WRKSRC}/docs/osm2pgsql.1

.include <bsd.port.mk>
