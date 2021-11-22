# $OpenBSD: Makefile,v 1.39 2021/11/22 10:36:41 landry Exp $

BROKEN-i386 =	clang 10.0.1 ICE compiling get_edges_9_columns in edges_input.c

COMMENT =	geospatial routing extension for PostgreSQL

V =		3.3.0
DISTNAME =	pgrouting-${V}
MASTER_SITES =	https://github.com/pgRouting/pgrouting/releases/download/v${V}/

CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	m pthread ${COMPILER_LIBCXX}

MODULES =	databases/postgresql devel/cmake
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server \
		devel/boost

TEST_DEPENDS =	${BUILD_PKGPATH} \
		shells/bash \
		databases/pgtap
TEST_ENV =	LD_PRELOAD=libpthread.so
SUBST_VARS =	V
MODPOSTGRESQL_TEST_DBNAME =	___pgr___test___
MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	bash ./tools/testers/pg_prove_tests.sh postgres 5432

.include <bsd.port.mk>
