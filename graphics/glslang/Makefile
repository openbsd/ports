PORTROACH =	limit:^[0-9]

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	12.0.0
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	glslang
REVISION =	1

SHARED_LIBS +=	glslang	0.0 # 12.0

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

do-test:
	cd ${WRKSRC}/Test; exec ./runtests localResults \
	    ${WRKBUILD}/StandAlone/glslangValidator \
	    ${WRKBUILD}/StandAlone/spirv-remap

.include <bsd.port.mk>
