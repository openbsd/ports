COMMENT =	SVG rendering and manipulation library in C++

GH_ACCOUNT =	sammycage
GH_PROJECT =	lunasvg
GH_TAGNAME =	v3.5.0
REVISION =	0

SHARED_LIBS +=  lunasvg                   0.0 # 0.0
SHARED_LIBS +=  plutovg                   0.0 # 0.0

CATEGORIES =	graphics

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m stdthreads

# gnu++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS +=		devel/libstdthreads

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} \
				-I${LOCALBASE}/include \
				-L${LOCALBASE}/lib"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
