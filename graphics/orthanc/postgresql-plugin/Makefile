COMMENT =		PostgreSQL backend for Orthanc

VERSION =		11.0
PLUGIN =		PostgreSQL

DISTNAME =		Orthanc${PLUGIN}-${VERSION}
WRKSRC =		${WRKDIST}/PostgreSQL

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_random-mt boost_regex-mt boost_thread-mt
WANTLIB += crypto jsoncpp m pq protobuf ssl uuid z

# __int128, zero-sized arrays (hard failure with base gcc)
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		graphics/orthanc/server:patch \
			graphics/orthanc/server \
			databases/postgresql,-server \
			devel/gtest \
			lang/python/3

RUN_DEPENDS =		graphics/orthanc/server

LIB_DEPENDS =		databases/postgresql \
			devel/boost \
			devel/jsoncpp \
			sysutils/e2fsprogs

CONFIGURE_ARGS =	-DUSE_SYSTEM_UUID=ON

.include <bsd.port.mk>
