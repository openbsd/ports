PORTROACH =	limit:^[0-9]

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	13.0.0
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	glslang

SHARED_LIBS +=	glslang				4.0 # 13.0
SHARED_LIBS +=	HLSL				0.0 # 12.1
SHARED_LIBS +=	SPIRV				3.0 # 13.0
SHARED_LIBS +=	SPVRemapper			1.0 # 13.0

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
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

SUBST_VARS +=	ADDITIONAL_LIBRARIES

pre-configure:
	${SUBST_CMD} ${WRKSRC}/StandAlone/CMakeLists.txt

do-test:
	cd ${WRKSRC}/Test; exec ./runtests localResults \
	    ${WRKBUILD}/StandAlone/glslangValidator \
	    ${WRKBUILD}/StandAlone/spirv-remap

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == ports-gcc
ADDITIONAL_LIBRARIES =	stdc++fs
.endif
