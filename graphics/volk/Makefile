COMMENT =	meta loader for Vulkan API

# doesn't build dynamic library; (conflict with libvolk.so from comms/gnuradio)
V =		1.3.296.0
PKGNAME =	volk-${V}
DIST_TUPLE +=	github zeux volk vulkan-sdk-${V} .
REVISION =	0
CATEGORIES =	graphics
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	graphics/vulkan-headers
LIB_DEPENDS =	graphics/vulkan-loader

CONFIGURE_ARGS =	-DCMAKE_INSTALL_INCLUDEDIR=/usr/local/include/vulkan_volk \
			-DCMAKE_INSTALL_LIBDIR=/usr/local/lib/vulkan_volk \
			-DVOLK_INSTALL=ON


.include <bsd.port.mk>
