# $OpenBSD: Makefile,v 1.29 2020/07/20 08:36:27 landry Exp $

COMMENT =	geospatial routing extension for PostgreSQL

V =		3.0.2
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
	sh ./tools/testers/pg_prove_tests.sh postgres

.include <bsd.port.mk>
