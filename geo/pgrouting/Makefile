# $OpenBSD: Makefile,v 1.20 2017/11/21 20:41:18 landry Exp $

COMMENT =	geospatial routing extension for PostgreSQL

V =		2.5.2
GH_TAGNAME =	v${V}
GH_PROJECT =	pgrouting
GH_ACCOUNT =	pgRouting

CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	CGAL boost_system-mt boost_thread-mt gmp m pthread
WANTLIB +=	boost_atomic-mt boost_chrono-mt boost_date_time-mt ${COMPILER_LIBCXX}

MODULES =	databases/postgresql devel/cmake
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server
TEST_DEPENDS =	${BUILD_PKGPATH}
TEST_ENV =	LD_PRELOAD=libpthread.so
SUBST_VARS =	V
MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	./tools/testers/algorithm-tester.pl

.include <bsd.port.mk>
