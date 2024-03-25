COMMENT =	SL/HLSL to SPIR-V shader compiler

DIST_TUPLE =	github google shaderc v2024.0 .

SHARED_LIBS +=	shaderc_shared		1.0

CATEGORIES =	graphics

MAINTAINER =	Omar Polo <op@openbsd.org>

# Apache 2
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} SPIRV c glslang m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/gtest \
		graphics/spirv-headers \
		graphics/spirv-tools

LIB_DEPENDS =	graphics/glslang

CXXFLAGS +=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/glslang \
		-std=c++14

LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS}"
CONFIGURE_ARGS +=	-DSHADERC_ENABLE_WERROR_COMPILE=OFF

# fake the deps version
pre-configure:
	echo '"spirv-tools system\\n"' >> ${WRKSRC}/glslc/src/build-version.inc
	echo '"glslang system\\n"' >> ${WRKSRC}/glslc/src/build-version.inc

.include <bsd.port.mk>
