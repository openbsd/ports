PORTROACH =	limit:^[0-9]

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	16.2.0
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	glslang

SHARED_LIBS +=	glslang				10.0
SHARED_LIBS +=	glslang-default-resource-limits 0.1 # 15.0
SHARED_LIBS +=	SPIRV				6.0 # 15.0

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
BUILD_DEPENDS =	graphics/spirv-tools
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

CONFIGURE_ARGS +=	-DALLOW_EXTERNAL_SPIRV_TOOLS=ON \
			-DBUILD_SHARED_LIBS=ON

do-test:
	cd ${WRKSRC}/Test; exec ./runtests localResults \
	    ${WRKBUILD}/StandAlone/glslangValidator \
	    ${WRKBUILD}/StandAlone/spirv-remap

.include <bsd.port.mk>
