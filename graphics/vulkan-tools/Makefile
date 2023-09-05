COMMENT =	Vulkan Utilities and Tools

V =		1.3.261.1
PKGNAME =	vulkan-tools-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Tools

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c m vulkan xcb

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/glslang \
		graphics/vulkan-headers
LIB_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ARGS +=	-DGLSLANG_INSTALL_DIR="/usr/local" \
			-DBUILD_WSI_WAYLAND_SUPPORT=OFF

NO_TEST =	Yes

CXXFLAGS +=	-I${X11BASE}/include

# glslangValidator -> glslang until this port can cope with glslang-12.3.1+
pre-configure:
	find ${WRKSRC} -type f -exec sed -i 's,glslangValidator,glslang,g' {} \;

.include <bsd.port.mk>
