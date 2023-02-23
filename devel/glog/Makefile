COMMENT =		C++ application-level logging library

GH_ACCOUNT =		google
GH_PROJECT =		glog
GH_TAGNAME =		v0.4.0
REVISION =		3

SHARED_LIBS +=		glog 2.0 # 0.2.1

CATEGORIES =		devel

# New BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} execinfo gflags m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/gflags

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON
CONFIGURE_ENV +=	"LDFLAGS=${LDFLAGS}"

LDFLAGS +=		-lexecinfo

# evertyhing except tests
ALL_TARGET =		glog

# build whatever is left (ca. 10 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
