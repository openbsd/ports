# $OpenBSD: Makefile,v 1.17 2017/09/18 08:23:36 landry Exp $

COMMENT =	geospatial routing extension for PostgreSQL

GH_TAGNAME =	v2.5.0
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
COMPILER =	gcc

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server
TEST_DEPENDS =	${BUILD_PKGPATH}
TEST_ENV =	LD_PRELOAD=libpthread.so

MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	./tools/testers/algorithm-tester.pl

.include <bsd.port.mk>
