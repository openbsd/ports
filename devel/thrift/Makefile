COMMENT =	software stack for point-to-point RPC implementation

V =		0.24.0
DISTNAME =	thrift-${V}

CATEGORIES=	devel

HOMEPAGE=	https://thrift.apache.org

SHARED_LIBS +=	thrift                    1.0 # 0.0
SHARED_LIBS +=	thrift_c_glib             1.0 # 0.0
SHARED_LIBS +=	thrift_c_glib_zlib        1.0 # 0.0
SHARED_LIBS +=	thriftz                   1.0 # 0.0

# Apache 2.0
PERMIT_PACKAGE=	Yes

# C++11
COMPILER =	base-clang ports-gcc
SITES =		https://dlcdn.apache.org/thrift/${V}/
MODULES =	devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DWITH_LIBEVENT=OFF \
			-DWITH_QT5=OFF \
			-DWITH_PYTHON=OFF \
			-DWITH_JAVA=OFF \
			-DWITH_JAVASCRIPT=OFF \
			-DWITH_NODEJS=OFF

# catch.hpp shuffle triggers a static assertion on RNG validity
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

BUILD_DEPENDS =	devel/boost \
		devel/bison
# some headers include boost headers
RUN_DEPENDS =	devel/boost
LIB_DEPENDS =	devel/glib2
WANTLIB +=	${COMPILER_LIBCXX} c crypto glib-2.0 gobject-2.0 m
WANTLIB +=	ssl z

.include <bsd.port.mk>
