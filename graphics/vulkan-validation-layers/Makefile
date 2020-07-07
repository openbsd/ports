# $OpenBSD: Makefile,v 1.4 2020/07/07 08:08:07 thfr Exp $

COMMENT =	Vulkan Validation Layers

V =		1.2.141.0
PKGNAME =	vulkan-validation-layers-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-ValidationLayers

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
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/glslang \
		graphics/vulkan-headers \
		graphics/spirv-tools

CONFIGURE_ARGS +=	-DGLSLANG_INSTALL_DIR="${LOCALBASE}" \
			-DBUILD_WSI_WAYLAND_SUPPORT=False

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

.include <bsd.port.mk>
