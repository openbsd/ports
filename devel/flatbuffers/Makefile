COMMENT=	memory optimized serialization library

GH_ACCOUNT=	google
GH_PROJECT=	flatbuffers
GH_TAGNAME=	v23.5.26
REVISION=	1

SHARED_LIBS=	flatbuffers	2.0	# 2.0.0

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

# evertyhing except tests
ALL_TARGET =	flatbuffers_shared flatc

# build whatever is left (ca. 40 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
