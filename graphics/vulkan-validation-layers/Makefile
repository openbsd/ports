COMMENT =	Vulkan Validation Layers

V =		1.3.275.0
PKGNAME =	vulkan-validation-layers-${V}
GH_TAGNAME =	vulkan-sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-ValidationLayers
REVISION =	0

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/spirv-headers \
		graphics/spirv-tools \
		graphics/vulkan-headers \
		graphics/vulkan-utility-libraries

# needs robin_hood cmake package to build with robing hood hashing
CONFIGURE_ARGS +=	-DBUILD_WERROR=False \
			-DBUILD_WSI_WAYLAND_SUPPORT=False \
			-DSPIRV_HEADERS_INSTALL_DIR=${LOCALBASE}/include/spirv \
			-DUSE_ROBIN_HOOD_HASHING=False

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

CXXFLAGS +=	-I${X11BASE}/include

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

.include <bsd.port.mk>
