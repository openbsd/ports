COMMENT =	embedded C/C++ web server

GH_ACCOUNT =	civetweb
GH_PROJECT =	civetweb
GH_TAGNAME =	v1.15

SHARED_LIBS +=  civetweb                  0.0 # 0.0
SHARED_LIBS +=  civetweb-cpp              0.0 # 0.0

CATEGORIES =	www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DCIVETWEB_BUILD_TESTING=OFF \
			-DCIVETWEB_ENABLE_CXX=ON \
			-DCIVETWEB_ENABLE_IPV6=ON \
			-DCIVETWEB_ENABLE_ZLIB=ON \
			-DCIVETWEB_ENABLE_WEBSOCKETS=ON \
			-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
