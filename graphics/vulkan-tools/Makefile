COMMENT =	Vulkan Utilities and Tools

V =		1.3.296.0
PKGNAME =	vulkan-tools-${V}
GH_TAGNAME =	vulkan-sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Tools
REVISION =	1

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

# vulkan is dynamically opened via statically linked volk/dlopen
WANTLIB += ${COMPILER_LIBCXX} X11 c m vulkan wayland-client xcb

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/glslang \
		graphics/volk \
		graphics/vulkan-headers \
		wayland/libinput-openbsd
LIB_DEPENDS =	graphics/vulkan-loader \
		wayland/wayland

CONFIGURE_ARGS +=	-DGLSLANG_INSTALL_DIR="/usr/local"
CONFIGURE_ENV +=	volk_DIR=${LOCALBASE}/lib/vulkan_volk/cmake/volk

NO_TEST =	Yes

CFLAGS +=	-I${LOCALBASE}/include/vulkan_volk
CXXFLAGS +=	-I${LOCALBASE}/include/vulkan_volk \
		-I${X11BASE}/include

.include <bsd.port.mk>
