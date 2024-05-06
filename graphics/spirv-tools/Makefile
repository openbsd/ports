COMMENT =	API and commands for processing SPIR-V

V =		1.3.275.0
DISTNAME =	spirv-tools-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	SPIRV-Tools
GH_TAGNAME =	vulkan-sdk-${V}
EPOCH =		0
REVISION =	0

SHARED_LIBS +=	SPIRV-Tools-shared	0.0	# 1.3.261.1

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/spirv-headers

CONFIGURE_ARGS =	-DSPIRV-Headers_SOURCE_DIR="${LOCALBASE}"

# effcee is missing to build tests
NO_TEST =	Yes

.include <bsd.port.mk>
