# $OpenBSD: Makefile,v 1.31 2020/08/05 11:28:28 landry Exp $

COMMENT =	geospatial routing extension for PostgreSQL

V =		3.1.0
DISTNAME =	pgrouting-${V}
MASTER_SITES =	https://github.com/pgRouting/pgrouting/releases/download/v${V}/

CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	m pthread ${COMPILER_LIBCXX}

MODULES =	databases/postgresql devel/cmake
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server \
		devel/boost

TEST_DEPENDS =	${BUILD_PKGPATH} \
		databases/pgtap
TEST_ENV =	LD_PRELOAD=libpthread.so
SUBST_VARS =	V
MODPOSTGRESQL_TEST_DBNAME =	___pgr___test___
MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	sh ./tools/testers/pg_prove_tests.sh postgres 5432
post-extract:
	# tests crashes the server
	rm -f ${WRKSRC}/pgtap/vrp_basic/no_crash_test-vrpOneDepot.sql ${WRKSRC}/pgtap/pickDeliver/pickDeliver/innerQuery.sql

.include <bsd.port.mk>
