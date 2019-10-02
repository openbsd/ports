# $OpenBSD: Makefile,v 1.7 2019/10/02 18:29:33 jasper Exp $

COMMENT =		PostgreSQL backend for Orthanc

VERSION =		2.0
PLUGIN =		PostgreSQL
REVISION =		2

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt jsoncpp
WANTLIB += m pq

# __int128, zero-sized arrays (hard failure with base gcc)
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No
# prevent overrides from the python module
CONFIGURE_STYLE =	cmake
	
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
