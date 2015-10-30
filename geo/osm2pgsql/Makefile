# $OpenBSD: Makefile,v 1.1.1.1 2015/10/30 17:18:53 landry Exp $

COMMENT =		OSM data to PostgreSQL converter

GH_TAGNAME =		0.88.1
GH_PROJECT =		osm2pgsql
GH_ACCOUNT =		openstreetmap

DISTNAME =		osm2pgsql-${GH_TAGNAME}
CATEGORIES =		geo databases

HOMEPAGE =		http://wiki.openstreetmap.org/wiki/Osm2pgsql

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	autoconf
AUTOMAKE_VERSION =	1.14
AUTOCONF_VERSION =	2.69

USE_GMAKE =		Yes

WANTLIB +=		boost_filesystem boost_system boost_system-mt
WANTLIB +=		boost_thread-mt bz2 c crypto geos lzma
WANTLIB +=		m pq proj protobuf-c pthread ssl stdc++ xml2 z ${MODLUA_WANTLIB}

MODULES =		converters/libiconv	\
			databases/postgresql	\
			gcc4			\
			lang/python		\
			lang/lua

LIB_DEPENDS =		databases/postgresql	\
			devel/proj		\
			devel/protobuf-c	\
			geo/geos		\
			textproc/libxml		\
			devel/boost		\

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS}	\
			${MODGNU_AUTOMAKE_DEPENDS}	\
			devel/libtool			\

TEST_DEPENDS =		databases/py-psycopg2 \
			geo/postgis

MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++

MODPY_ADJ_FILES =	tests/regression-test.py

MODLUA_VERSION =	5.1
MODLUA_SA =		Yes

CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -D_GLIBCXX_USE_DEPRECATED"
CONFIGURE_ENV +=	LUA=${MODLUA_BIN}
CONFIGURE_ENV +=	LUA_INCLUDE=-I${MODLUA_INCL_DIR}
CONFIGURE_ENV +=	LUA_LIB=${MODLUA_LIB}
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ENV +=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		autoreconf -vfi
	@${SUBST_CMD} ${WRKSRC}/docs/osm2pgsql.1

.include <bsd.port.mk>
