COMMENT =	Vulkan Utilities and Tools

V =		1.2.198.0
PKGNAME =	vulkan-tools-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Tools

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext c m vulkan xcb

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python


MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/glslang \
		graphics/vulkan-headers
LIB_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ARGS +=	-DGLSLANG_INSTALL_DIR="${LOCALBASE}" \
			-DBUILD_WSI_WAYLAND_SUPPORT=False

NO_TEST =	Yes

.include <bsd.port.mk>
