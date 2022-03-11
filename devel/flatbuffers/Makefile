COMMENT=	memory optimized serialization library

GH_ACCOUNT=	google
GH_PROJECT=	flatbuffers
GH_TAGNAME=	v2.0.0

SHARED_LIBS=	flatbuffers	1.0	# 2.0.0

CATEGORIES=	devel
HOMEPAGE=	https://google.github.io/flatbuffers/

MAINTAINER=	Ashton Fagg <ashton@fagg.id.au>

# Apache 2
PERMIT_PACKAGE= Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER=	base-clang ports-gcc
MODULES=	devel/cmake

CONFIGURE_ARGS=	-DFLATBUFFERS_BUILD_SHAREDLIB=on \
		-DFLATBUFFERS_BUILD_TESTS=on \
		-DFLATBUFFERS_BUILD_FLATLIB=off

.include <bsd.port.mk>
