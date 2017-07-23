# $OpenBSD: Makefile,v 1.5 2017/07/23 09:26:27 espie Exp $

V =			2.0.0
COMMENT =		convert OSM data to PgRouting format
DISTNAME =		osm2pgrouting-${V}
REVISION =		0
CATEGORIES =		geo

HOMEPAGE =		http://pgrouting.org

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c expat m pq ${COMPILER_LIBCXX}

GH_ACCOUNT =		pgRouting
GH_PROJECT =		osm2pgrouting
GH_TAGNAME =		v${V}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		databases/postgresql
RUN_DEPENDS =		geo/pgrouting

.include <bsd.port.mk>
