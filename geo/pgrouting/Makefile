# $OpenBSD: Makefile,v 1.7 2015/09/19 15:44:12 landry Exp $

SHARED_ONLY =	Yes

COMMENT =	geospatial routing extension for PostgreSQL

GH_COMMIT =	6bb82c56e3c4a37ae6a18b5e3f1e551d8c9d10d8
GH_PROJECT =	pgrouting
GH_ACCOUNT =	pgRouting

DISTNAME =	pgrouting-2.1.0
CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	databases/postgresql devel/cmake gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server
TEST_DEPENDS =	${BUILD_PKGPATH}
TEST_ENV =	LD_PRELOAD=libpthread.so
WANTLIB +=	CGAL boost_system-mt boost_thread-mt gmp m stdc++ pthread

MODPOSTGRESQL_TEST_CMD = \
	cd ${WRKSRC}; \
	./tools/test-runner.pl

SUBST_VARS +=	MODPOSTGRESQL_TEST_PGHOST
pre-configure:
	${SUBST_CMD} ${WRKSRC}/tools/test-runner.pl

.include <bsd.port.mk>
