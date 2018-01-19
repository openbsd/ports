# $OpenBSD: Makefile,v 1.3 2018/01/19 17:52:59 jca Exp $

COMMENT =		PostgreSQL backend for Orthanc

VERSION =		2.0
PLUGIN =		PostgreSQL

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt jsoncpp
WANTLIB += m pq

# __int128, zero-sized arrays (hard failure with base gcc)
COMPILER =		base-clang ports-clang ports-gcc

BUILD_DEPENDS =		databases/postgresql,-server \
			graphics/orthanc/server
RUN_DEPENDS =		graphics/orthanc/server
LIB_DEPENDS =		databases/postgresql \
			devel/boost \
			devel/jsoncpp

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="-I${LOCALBASE}/include -pthread" \
			-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include -pthread" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib"

# XXX: undefined references to testing libs, and requires running postgres
CONFIGURE_ARGS +=	-DBUILD_UNIT_TESTS=Off
NO_TEST =		Yes

.include <bsd.port.mk>
