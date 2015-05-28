# $OpenBSD: Makefile,v 1.2 2015/05/28 19:59:29 ajacoutot Exp $

V =			2.0.0
COMMENT =		convert OSM data to PgRouting format
DISTNAME =		osm2pgrouting-${V}
CATEGORIES =		geo

HOMEPAGE =		http://pgrouting.org

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c expat m pq stdc++

GH_ACCOUNT =		pgRouting
GH_PROJECT =		osm2pgrouting
GH_TAGNAME =		v${V}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		databases/postgresql
RUN_DEPENDS =		geo/pgrouting

.include <bsd.port.mk>
