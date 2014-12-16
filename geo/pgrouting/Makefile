# $OpenBSD: Makefile,v 1.1.1.1 2014/12/16 21:34:35 landry Exp $

SHARED_ONLY =	Yes

COMMENT =	geospatial routing extension for PostgreSQL

GH_TAG =	v2.0.0
GH_COMMIT =	d6ed2cba4c574b8ac463632df451b6f011fd522d
GH_PROJECT =	pgrouting
GH_ACCOUNT =	pgRouting

DISTNAME =	pgrouting-2.0.0
CATEGORIES =	geo databases

HOMEPAGE =	http://pgrouting.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake

LIB_DEPENDS =	math/cgal
RUN_DEPENDS =	databases/postgresql,-server
BUILD_DEPENDS =	databases/postgresql,-server
WANTLIB +=	CGAL boost_system-mt boost_thread-mt gmp m stdc++
NO_TEST =	Yes

.include <bsd.port.mk>
