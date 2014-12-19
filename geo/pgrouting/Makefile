# $OpenBSD: Makefile,v 1.2 2014/12/19 21:16:55 landry Exp $

SHARED_ONLY =	Yes

COMMENT =	geospatial routing extension for PostgreSQL

GH_TAG =	v2.0.0
GH_COMMIT =	d6ed2cba4c574b8ac463632df451b6f011fd522d
GH_PROJECT =	pgrouting
GH_ACCOUNT =	pgRouting
REVISION =	0

DISTNAME =	pgrouting-2.0.0
CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	geo/postgis
BUILD_DEPENDS =	databases/postgresql,-server
TEST_DEPENDS =	${BUILD_PKGPATH}
WANTLIB +=	CGAL boost_system-mt boost_thread-mt gmp m stdc++

do-test:
	regdir=$$(mktemp -t -d pgrouting-regress.XXXXXX) && \
	LC_CTYPE=C initdb -D $${regdir} && \
	LD_PRELOAD=libpthread.so pg_ctl -D $${regdir} -o '-p 12341' -l $${regdir}/log start && \
	cd ${WRKSRC} && perl tools/test-runner.pl -pgport 12341 || \
	pg_ctl -D $${regdir} -o '-p 12341'  stop -m fast
	#not all tests pass - ensure we stop the server

.include <bsd.port.mk>
