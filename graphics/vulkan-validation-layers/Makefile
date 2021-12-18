# $OpenBSD: Makefile,v 1.12 2021/12/18 03:58:33 thfr Exp $

COMMENT =	Vulkan Validation Layers

V =		1.2.198.0
PKGNAME =	vulkan-validation-layers-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-ValidationLayers
REVISION =	0

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/robin-hood-hashing \
		graphics/glslang \
		graphics/vulkan-headers \
		graphics/spirv-headers \
		graphics/spirv-tools

CONFIGURE_ARGS +=	-DGLSLANG_INSTALL_DIR="${LOCALBASE}" \
			-DBUILD_WSI_WAYLAND_SUPPORT=False \
			-DSPIRV_HEADERS_INSTALL_DIR=${LOCALBASE}/include/spirv \
			-DBUILD_WERROR=False

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS +=	-mxgot
.endif

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

.include <bsd.port.mk>
