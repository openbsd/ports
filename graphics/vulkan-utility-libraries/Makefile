COMMENT =	Vulkan Utility Libraries

V =		1.3.290.0
PKGNAME =	vulkan-utility-libraries-${V}
DIST_TUPLE =	github KhronosGroup Vulkan-Utility-Libraries vulkan-sdk-${V} .

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	graphics/vulkan-headers

# -DBUILD_TESTS=ON depends on magic_enum
NO_TEST =	Yes

.include <bsd.port.mk>
