COMMENT =	database designed to make SQL scalable for time-series data

GH_ACCOUNT =	timescale
GH_PROJECT =	timescaledb
GH_TAGNAME =	2.15.2

EXTRAS_COMMIT =	52443a469a58d3f64a4e049889f468e8a149cc8f
DIST_TUPLE +=	github timescale timescaledb-extras ${EXTRAS_COMMIT} _extras

CATEGORIES =	databases
HOMEPAGE =	https://www.timescale.com/

MAINTAINER =	Renato Aguiar <renato@renatoaguiar.net>

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES =	devel/cmake
SUBST_VARS +=	GH_TAGNAME

WANTLIB =	crypto pq ssl

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	databases/postgresql
BUILD_DEPENDS =	databases/postgresql,-server
RUN_DEPENDS =	databases/postgresql,-server

CONFIGURE_ARGS +=	-DREGRESS_CHECKS=OFF \
			-DLINTER=OFF \
			-DCLANG_FORMAT=OFF \
			-DSEND_TELEMETRY_DEFAULT=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/timescaledb
	${INSTALL_DATA} \
		${WRKSRC}/_extras/utils/2.15.X-fix_hypertable_foreign_keys.sql \
		${PREFIX}/share/timescaledb

.include <bsd.port.mk>
